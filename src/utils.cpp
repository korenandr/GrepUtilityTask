#include "utils.hpp"

#include <iostream>
#include <filesystem>
#include <fstream>
#include <functional>
#include <thread>

namespace fs = std::filesystem;

namespace {

void search_in_file(const std::string& query, const std::string& file_path, app::utils::Context& context, std::map<std::string, std::vector<size_t>>& result) {
    std::ifstream file(file_path);
    if (!file.is_open()) {
        std::lock_guard<std::mutex> lock(context.cerr_mutex);
        std::cerr << "Cannot open file: " << file_path << ", just skip it" << std::endl;
        return;
    }

    std::string line;
    size_t line_number = 0;
    while (std::getline(file, line)) {
        ++line_number;

        if (line.find(query) != std::string::npos) {
            std::lock_guard<std::mutex> lock(context.cout_mutex);
            std::cout << file_path << ":" << line_number << ": " << line << std::endl;
            result[file_path].push_back(line_number);
        }
    }
}

void worker(const std::string& query, app::utils::Context& context, std::map<std::string, std::vector<size_t>>& result) {
    while (true) {
        std::string file_path;
        {
            std::unique_lock<std::mutex> lock(context.queue_mutex);
            context.cv.wait(lock, [&context] { return !context.file_queue.empty() || context.done; });
            if (context.file_queue.empty()) return;
            file_path = context.file_queue.front();
            context.file_queue.pop();
        }
        search_in_file(query, file_path, context, result);
    }
}

}

namespace app::utils {

void traverse_directory(const std::string& query, const std::string& directory_path, Context& context, std::map<std::string, std::vector<size_t>>& result) {
    if (!fs::exists(directory_path) || !fs::is_directory(directory_path)) {
        std::cerr << "Error: Directory does not exist or is not a directory: " << directory_path << std::endl;
        return;
    }

    const auto num_threads = std::max(std::thread::hardware_concurrency(), 1u);

    std::vector<std::thread> threads;
    threads.reserve(num_threads);

    for (unsigned int i = 0; i < num_threads; ++i) {
        threads.emplace_back(worker, query, std::ref(context), std::ref(result));
    }

    for (const auto& entry : fs::recursive_directory_iterator(directory_path)) {
        if (entry.is_regular_file()) {
            std::unique_lock<std::mutex> lock(context.queue_mutex);
            context.file_queue.push(entry.path().string());
            context.cv.notify_one();
        }
    }

    {
        std::unique_lock<std::mutex> lock(context.queue_mutex);
        context.done = true;
        context.cv.notify_all();
    }

    for (auto& thread : threads) {
        thread.join();
    }
}

} // namespace app::utils
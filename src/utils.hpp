#ifndef GREP_APP_UTILS_HPP
#define GREP_APP_UTILS_HPP

#include <map>
#include <string>
#include <vector>
#include <mutex>
#include <queue>
#include <condition_variable>

namespace app::utils {

struct Context {
    std::mutex cout_mutex;
    std::mutex cerr_mutex;
    std::mutex queue_mutex;
    std::condition_variable cv;
    std::queue<std::string> file_queue;
    bool done = false;
};

void traverse_directory(const std::string& query, const std::string& directory_path, Context& context, std::map<std::string, std::vector<size_t>>& result);

} // namespace app::utils

#endif //GREP_APP_UTILS_HPP
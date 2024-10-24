#include <iostream>
#include <string>

#include "utils.hpp"

int main(int argc, char* argv[]) {
    if (argc != 3) {
        std::cerr << "Usage: " << argv[0] << " <query> <directory>" << std::endl;
        return EXIT_FAILURE;
    }

    const std::string query = argv[1];
    const std::string directory_path = argv[2];

    try
    {
        app::utils::Context context;
        std::map<std::string, std::vector<size_t>> result;
        app::utils::traverse_directory(query, directory_path, context, result);
    }
    catch (const std::exception& exc)
    {
        std::cerr << "Failed to run application: " << exc.what() << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
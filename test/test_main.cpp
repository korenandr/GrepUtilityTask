#include <gtest/gtest.h>
#include <fstream>
#include <filesystem>
#include <map>
#include <string>
#include <vector>

#include "utils.hpp"

namespace fs = std::filesystem;


TEST(GrepUtilityTest, SimpleTest) {
    const std::string& query = "have";
    const std::string& directory_path = "/app/simple";

    app::utils::Context context;
    std::map<std::string, std::vector<size_t>> result;
    app::utils::traverse_directory(query, directory_path, context, result);

    EXPECT_EQ(result.size(), 2);

    EXPECT_EQ(result["/app/simple/file1.txt"].size(), 2);
    EXPECT_EQ(result["/app/simple/file1.txt"][0], 19);
    EXPECT_EQ(result["/app/simple/file1.txt"][1], 22);

    EXPECT_EQ(result["/app/simple/file2.txt"].size(), 2);
    EXPECT_EQ(result["/app/simple/file2.txt"][0], 25);
    EXPECT_EQ(result["/app/simple/file2.txt"][1], 28);
}

TEST(GrepUtilityTest, RecursiveTest) {
    const std::string& query = "Kafka";
    const std::string& directory_path = "/app/recursive";

    app::utils::Context context;
    std::map<std::string, std::vector<size_t>> result;
    app::utils::traverse_directory(query, directory_path, context, result);

    EXPECT_EQ(result.size(), 2);

    EXPECT_EQ(result["/app/recursive/file1.txt"].size(), 1);
    EXPECT_EQ(result["/app/recursive/file1.txt"][0], 23);

    EXPECT_EQ(result["/app/recursive/dir_1/dir_1_2/file_1_2.txt"].size(), 1);
    EXPECT_EQ(result["/app/recursive/dir_1/dir_1_2/file_1_2.txt"][0], 20);
}

TEST(GrepUtilityTest, DirectoryDoesntExistTest) {
    const std::string& query = "Lev Tolstoy";
    const std::string& directory_path = "/app/dir_doesnt_exists";

    app::utils::Context context;
    std::map<std::string, std::vector<size_t>> result;
    app::utils::traverse_directory(query, directory_path, context, result);

    EXPECT_EQ(result.size(), 0);
}

TEST(GrepUtilityTest, EmptyDirectoryTest) {
    const std::string& query = "Lev Tolstoy";
    const std::string& directory_path = "/app/empty_directory";

    app::utils::Context context;
    std::map<std::string, std::vector<size_t>> result;
    app::utils::traverse_directory(query, directory_path, context, result);

    EXPECT_EQ(result.size(), 0);
}

TEST(GrepUtilityTest, DirectoryWithBinaryFilesTest) {
    const std::string& query = "gnu";
    const std::string& directory_path = "/app/binary";

    app::utils::Context context;
    std::map<std::string, std::vector<size_t>> result;
    app::utils::traverse_directory(query, directory_path, context, result);

    EXPECT_EQ(result.size(), 1);
    EXPECT_EQ(result["/app/binary/g++"].size(), 14);
}

TEST(GrepUtilityTest, DirectoryWithLargeTextFilesTest) {
    const std::string& query = "Wilson";
    const std::string& directory_path = "/app/large_text_files";

    app::utils::Context context;
    std::map<std::string, std::vector<size_t>> result;
    app::utils::traverse_directory(query, directory_path, context, result);

    EXPECT_EQ(result.size(), 1);
    EXPECT_EQ(result["/app/large_text_files/big.txt"].size(), 99);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
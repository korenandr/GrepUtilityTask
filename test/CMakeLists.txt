# testing binary
add_executable(
  GrepUtilityTest
  test_main.cpp
  ../src/utils.cpp
)

target_include_directories(GrepUtilityTest PRIVATE
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/../src/>
)

target_link_libraries(GrepUtilityTest PRIVATE gtest_main)

# enable testing functionality
enable_testing()

# define tests
add_test(
  NAME GrepUtilityTest
  COMMAND $<TARGET_FILE:GrepUtilityTest>
)
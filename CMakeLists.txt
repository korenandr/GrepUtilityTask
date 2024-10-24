cmake_minimum_required(VERSION 3.10)
project(GrepUtility VERSION 1.0)

include(cmake/StandardProjectSettings.cmake)
include(cmake/PreventInSourceBuilds.cmake)

set(CMAKE_CXX_STANDARD 17)

option(ENABLE_BUILD_TESTS "Enable Test Builds" ON)

# Link this 'library' to set the c++ standard / compile-time options requested
add_library(project_options INTERFACE)
target_compile_features(project_options INTERFACE cxx_std_${CMAKE_CXX_STANDARD})

# Link this 'library' to use the warnings specified in CompilerWarnings.cmake
add_library(project_warnings INTERFACE)

# standard compiler warnings
include(cmake/CompilerWarnings.cmake)
set_project_warnings(project_warnings)

# Adding the src:
add_subdirectory(src)

if(ENABLE_BUILD_TESTS)
    include(cmake/GoogleTests.cmake)
    add_subdirectory(test)
endif()
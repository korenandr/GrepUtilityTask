set(SOURCE_FILES 
        main.cpp
        utils.cpp)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

target_include_directories(${PROJECT_NAME} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}")

target_link_libraries(${PROJECT_NAME} PRIVATE project_options
                                      PRIVATE project_warnings)

install(TARGETS ${PROJECT_NAME})
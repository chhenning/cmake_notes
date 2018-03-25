cmake_minimum_required(VERSION 3.6)

project(myproject CXX)

find_package(GTest REQUIRED)
enable_testing()

add_executable(foo src/main.cpp)
target_link_libraries(foo GTest::GTest GTest::Main)
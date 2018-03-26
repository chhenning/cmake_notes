cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

find_package(Boost 1.67 REQUIRED COMPONENTS gil)

add_executable(awesome_gil_app ${CMAKE_SOURCE_DIR}/src/main.cpp)

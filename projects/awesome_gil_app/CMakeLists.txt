cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(awesome_gil_project CXX)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

find_package(PNG REQUIRED)
include_directories(${PNG_INCLUDE_DIR})

find_package(Boost 1.67 REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})

add_executable(awesome_gil_app ${CMAKE_SOURCE_DIR}/src/main.cpp)
target_link_libraries(awesome_gil_app ${PNG_LIBRARY})
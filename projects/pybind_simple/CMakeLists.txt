cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(pybind_test LANGUAGES CXX)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

find_package(pybind11 CONFIG REQUIRED)
message(STATUS "Found pybind11 v${pybind11_VERSION}: ${pybind11_INCLUDE_DIRS}")

if(pybind11_FOUND)

    pybind11_add_module(example src/example.cpp)

endif()






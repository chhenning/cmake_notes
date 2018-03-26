cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(pybind_test LANGUAGES CXX)

add_subdirectory(pybind11)
pybind11_add_module(example src/example.cpp)

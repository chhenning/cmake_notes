# Minimal CMake configuration for foobla
#
# Builds libchh and minimal collection of programs.
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

set(lib_name foobla)

project(${lib_name} LANGUAGES CXX)

# Common compile definitions
set(_compile_definitions)
if (MSVC)
  list(APPEND _compile_definitions "VC_EXTRALEAN;WIN32_LEAN_AND_MEAN;NOMINMAX;NOGDI")
endif()

message(STATUS "Configuring foobla library target")

# Common includes
set(_include_directories ${CMAKE_SOURCE_DIR}/src/foobla)


set(static_lib_simple_header_files)
list(APPEND static_lib_simple_header_files
    ${CMAKE_SOURCE_DIR}/src/foobla/addition.hpp
)

set(static_lib_simple_source_files)
list(APPEND static_lib_simple_source_files
    ${CMAKE_SOURCE_DIR}/src/foobla/addition.cpp
)

add_library(${lib_name} STATIC 
    ${static_lib_simple_header_files} 
    ${static_lib_simple_source_files})

# additional include dirs
target_include_directories(${lib_name} PRIVATE ${_include_directories})

target_compile_definitions(${lib_name} PRIVATE ${_compile_definitions})

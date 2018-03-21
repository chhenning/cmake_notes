# Minimal CMake configuration for foobla
#
# Builds libchh and minimal collection of programs.

cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(foobla LANGUAGES CXX)

# Common compile definitions
set(_compile_definitions)
if (MSVC)
  list(APPEND _compile_definitions "VC_EXTRALEAN;WIN32_LEAN_AND_MEAN;NOMINMAX;NOGDI")
endif()

message(STATUS "A message from CMakeLists.txt")

set(program_name foobla)

add_executable(${program_name} ${CMAKE_SOURCE_DIR}/src/main.cpp)
target_compile_definitions(${program_name} PRIVATE ${_compile_definitions})


# Minimal CMake configuration for foobla
#
# Builds libchh and minimal collection of programs.
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(foobla_project LANGUAGES CXX)

# Common compile definitions
set(_compile_definitions)
if (MSVC)
  list(APPEND _compile_definitions "VC_EXTRALEAN;WIN32_LEAN_AND_MEAN;NOMINMAX;NOGDI")
endif()

# Common includes
set(_include_directories ${CMAKE_SOURCE_DIR}/src)

###################
# foobla static lib
###################
message(STATUS "Configuring foobla library")

set(lib_name foobla)

set(foobla_header_files)
list(APPEND foobla_header_files
    ${CMAKE_SOURCE_DIR}/src/foobla/addition.hpp
)

set(foobla_source_files)
list(APPEND foobla_source_files
    ${CMAKE_SOURCE_DIR}/src/foobla/addition.cpp
)

add_library(${lib_name} STATIC 
    ${foobla_header_files} 
    ${foobla_source_files})

target_include_directories(${lib_name} PRIVATE ${_include_directories})
target_compile_definitions(${lib_name} PRIVATE ${_compile_definitions})


###################
# test app
###################
message(STATUS "Configuring foobla test app")

set(app_name test_foobla)

set(foobla_source_files ${CMAKE_SOURCE_DIR}/src/test/main.cpp)

add_executable(${app_name} ${foobla_source_files})

target_include_directories(${app_name} PRIVATE ${_include_directories})
target_compile_definitions(${app_name} PRIVATE ${_compile_definitions})

target_link_libraries(${app_name} ${lib_name})
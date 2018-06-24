# Minimal CMake configuration for foobla
#
# Builds libchh and minimal collection of programs.
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

set(program_name vcpkg_boost_test)

project(${program_name} LANGUAGES CXX)

# boost stuff
set(boost_components filesystem)

set(Boost_USE_STATIC_LIBS ON)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME  ON)
find_package(Boost 1.67.0 REQUIRED COMPONENTS ${boost_components})
include_directories(${Boost_INCLUDE_DIRS})


# Common compile definitions
set(_compile_definitions)
if (MSVC)
  # if autolinking is on this will show what the linker is looking for.
  # add_definitions(${Boost_LIB_DIAGNOSTIC_DEFINITIONS})

  #turn off auto linking
  add_definitions( -DBOOST_ALL_NO_LIB )
  
  #force dynamic libs
  #add_definitions( -DBOOST_ALL_DYN_LINK )

  list(APPEND _compile_definitions "VC_EXTRALEAN;WIN32_LEAN_AND_MEAN;NOMINMAX;NOGDI")
endif()

message(STATUS "A message from CMakeLists.txt")

add_executable(${program_name} ${CMAKE_SOURCE_DIR}/src/main.cpp)
target_compile_definitions(${program_name} PRIVATE ${_compile_definitions})
target_link_libraries(${program_name} ${Boost_LIBRARIES})


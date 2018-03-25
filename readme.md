# Some links

CMake - Introduction and best practices by Daniel Pfeifer
https://www.slideshare.net/DanielPfeifer1/cmake-48475415

C++Now 2017: Daniel Pfeifer “Effective CMake"
https://www.youtube.com/watch?v=bsXLMQ6WgIk
slides: https://github.com/boostcon/cppnow_presentations_2017/blob/master/05-19-2017_friday/effective_cmake__daniel_pfeifer__cppnow_05-19-2017.pdf

CppCon 2017: Mathieu Ropert “Using Modern CMake Patterns to Enforce a Good Modular Design”
https://www.youtube.com/watch?v=eC9-iRN2b04
slides: https://github.com/CppCon/CppCon2017/tree/master/Tutorials/Using%20Modern%20CMake%20Patterns%20to%20Enforce%20a%20Good%20Modular%20Design

Cmake best practices and guidelines
https://github.com/boost-cmake/bcm/wiki/Cmake-best-practices-and-guidelines

The Ultimate Guide to Modern CMake
https://rix0r.nl/blog/2015/08/13/cmake-guide/

Embracing Modern CMake
https://www.youtube.com/watch?v=JsjI5xr1jxM

Actual CMake documentation
https://cmake.org/cmake/help/v3.9/manual/cmake-buildsystem.7.html

Visual Studio integration of cmake
https://blogs.msdn.microsoft.com/vcblog/2016/10/05/cmake-support-in-visual-studio/

Some modules - beware! some might be old school
https://github.com/rpavlik/cmake-modules


# Great examples of cmake files:

https://github.com/valhalla/valhalla/blob/master/CMakeLists.txt

# Great examples of batch files to run cmake

https://github.com/nanodbc/nanodbc/blob/master/utility/build.bat



# Commands

Portable commands via "cmake -E xxx"

```
cmake -E make_directory build

// run cmake in build/ direcory and time the generation
cmake -E chdir build cmake -E time cmake ..

cmake -E remove_directory build
```

# Use examples

Open Visual Studio command prompt.

## zlib

```
cmake -E make_directory build

// generate the build system
// chain of three commands
// 1. change to build directory
// 2. time execution of next command
// 3. generate build script using x64 config
cmake -E chdir build cmake -E time cmake -A x64 ..

// build release version
// --build set folder
cmake --build build --target ALL_BUILD --config Release
cmake --build build --target RUN_TESTS --config Release
```

## poppler

To build poppler on Windows have a look at the build_poppler.bat


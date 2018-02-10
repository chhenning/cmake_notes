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

# Commands

Portable commands via "cmake -E xxx"

cmake -E make_directory build

run cmake in build/ direcory and time the generation
```cmake -E chdir build cmake -E time cmake ..```

cmake -E remove_directory build


# Use examples

Open Visual Studio command prompt.

## zlib

cmake -E make_directory build
cmake -E chdir build cmake -E time cmake -A x64 ..


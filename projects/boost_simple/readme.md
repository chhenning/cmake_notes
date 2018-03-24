# Steps to create cmake project

Boost_Simple console app with boost::filesystem as dependency.

A few things to consider

1. cmake's boost support depends on cmake's version

    According to:
    https://stackoverflow.com/questions/42123509/cmake-finds-boost-but-the-imported-targets-not-available-for-boost-version

    Boost 1.63 requires CMake 3.7 or newer
    Boost 1.64 requires CMake 3.8 or newer
    Boost 1.65 and 1.65.1 require CMake 3.9.3 or newer
    Boost 1.66 will be supported by CMake 3.11 or newer

    For instance, I have cmake 3.9x and I just cloned the latest boost (version 1.67). In this case cmake will output warning:
    
    `Imported targets not available for Boost version`
    
    cmake will then require a `boost_filesystem.lib` which is not the correct file name!!

    All in all don't use the latest boost with your cmake!
    
    
2. Auto-linking

    A special feature only for some IDEs, like Visual Studio. By default boost is looking for static builds. To turn off that feature set `BOOST_ALL_NO_LIB`.

    This can be changed to dynamic libs by setting

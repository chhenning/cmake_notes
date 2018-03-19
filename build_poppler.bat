@echo off
rem Runs CMake to configure poppler for Visual Studio 2017.


if not defined VS150COMNTOOLS goto :NoVS


:Build
set ENABLE_LIBOPENJPEG=none
set ENABLE_DCTDECODER=none
set ENABLE_QT5=OFF
set ENABLE_LIBCURL=OFF
set ENABLE_CPP=OFF
set BUILD_CPP_TESTS=OFF
"C:/Program Files/CMake/bin/cmake.exe" ^
    -A x64 ^
    "-DFREETYPE_LIBRARY=D:/vcpkg_2017/installed/x64-windows/lib/freetype.lib" ^
    "-DFREETYPE_INCLUDE_DIRS=D:/vcpkg_2017/installed/x64-windows/include" ^
    "-DZLIB_LIBRARY=D:/vcpkg_2017/installed/x64-windows/lib/zlib.lib" ^
    "-DZLIB_INCLUDE_DIR=D:/vcpkg_2017/installed/x64-windows/include" ^
    "-DPKG_CONFIG_EXECUTABLE=C:/tools/pkg-config/bin/pkg-config.exe" ^
    "-DIconv_INCLUDE_DIRS=D:/vcpkg_2017/installed/x64-windows/include" ^
    "-DIconv_LIBRARIES=D:/vcpkg_2017/installed/x64-windows/lib/libiconv.lib" ^
    "-DTESTDATADIR=D:/repos/poppler-test" ^
    -DENABLE_LIBOPENJPEG=%ENABLE_LIBOPENJPEG% ^
    -DENABLE_DCTDECODER=%ENABLE_DCTDECODER% ^
    -DENABLE_QT5=%ENABLE_QT5% ^
    -DENABLE_LIBCURL=%ENABLE_LIBCURL% ^
    -DENABLE_CPP=%ENABLE_CPP% ^
    -DBUILD_CPP_TESTS=%BUILD_CPP_TESTS% ^
    ..
goto :EOF

:NoVS
@echo build.bat
@echo  Visual Studio 2017 not found
@echo  "%%VS150COMNTOOLS%%" environment variable not defined
exit /B 1



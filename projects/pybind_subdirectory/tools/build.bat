@echo off
rem Runs CMake to configure poppler for Visual Studio 2017.
rem https://github.com/nanodbc/nanodbc/blob/master/utility/build.bat

if not defined VS150COMNTOOLS goto :NoVS


:Build
set BUILDDIR=build

pushd ..

rem remove build folder
if exist ".\build\" (
    rd /s /q "build\"
)

mkdir %BUILDDIR%
pushd %BUILDDIR%

"C:/Program Files/CMake/bin/cmake.exe" ^
    -A x64 ^
    -Dpybind11_DIR="D:/repos/cmake_notes/projects/pybind_simple/cmake" ^
    -Dpybind11_INCLUDE_DIR="D:/repos/pybind11/include" ^
    -DPYTHON_INCLUDE_DIRS="C:/Python36/include" ^
    -DPYTHON_LIBRARIES="C:/Python36/libs/python36.lib" ^
    ..

rem @echo Building foobla
rem msbuild.exe foobla_project.sln /p:Configuration=Release /p:Platform=x64


popd
popd

goto :EOF

:NoVS
@echo build.bat
@echo  Visual Studio 2017 not found
@echo  "%%VS150COMNTOOLS%%" environment variable not defined
exit /B 1



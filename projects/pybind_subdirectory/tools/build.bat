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
    -DPYTHON_EXECUTABLE="C:/Python36/python.exe" ^
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



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
    -DCMAKE_TOOLCHAIN_FILE=D:/vcpkg_2017/scripts/buildsystems/vcpkg.cmake ^
    -DVCPKG_TARGET_TRIPLET=x64-windows ^
    ..

rem Building
msbuild.exe myproject.sln /p:Configuration=Release /p:Platform=x64


popd
popd

goto :EOF

:NoVS
@echo build.bat
@echo  Visual Studio 2017 not found
@echo  "%%VS150COMNTOOLS%%" environment variable not defined
exit /B 1



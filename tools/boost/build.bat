@echo off

if not defined VS150COMNTOOLS goto :NoVS

:Build
set BUILDDIR=build

pushd D:\boost\libs\gil

rem remove build folder
if exist ".\build\" (
    rd /s /q "build\"
)

mkdir %BUILDDIR%
pushd %BUILDDIR%

cd

"C:/Program Files/CMake/bin/cmake.exe" ^
    -A x64 ^
    -DBoost_USE_STATIC_LIBS=OFF ^
    -DBoost_USE_STATIC_RUNTIME=OFF ^
    -DBOOST_LIBRARYDIR:PATH=D:/boost/stage/lib ^
    -DGIL_ENABLE_IO=OFF ^
    ..

popd
popd

goto :EOF

:NoVS
@echo build.bat
@echo  Visual Studio 2017 not found
@echo  "%%VS150COMNTOOLS%%" environment variable not defined
exit /B 1

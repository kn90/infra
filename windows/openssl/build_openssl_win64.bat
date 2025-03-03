call "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\BuildTools\Common7\Tools\VsDevCmd.bat" -arch=x64
call "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Auxiliary\Build\vcvarsall.bat" x64
SET PATH=%PATH%;C:\Program Files\NASM
SET CL=/FS

perl Configure %OPENSSL_BUILD_FLAGS_WINDOWS% VC-WIN64A
jom
if %errorlevel% neq 0 exit /b %errorlevel%

mkdir ..\build
mkdir ..\build\lib
move libcrypto.lib ..\build\lib\
move libssl.lib ..\build\lib\
move include ..\build\include

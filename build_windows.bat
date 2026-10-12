@echo off
cd /d "%~dp0"
if not exist Executable mkdir Executable
g++ -std=c++17 -O2 -Wall -Wextra -pedantic -static Source\*.cpp -o Executable\Project.exe
if errorlevel 1 (echo Build failed. Install a C++17 MinGW-w64 compiler. & pause & exit /b 1)
echo Build successful.
pause

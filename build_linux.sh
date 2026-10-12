#!/bin/sh
set -eu
cd "$(dirname "$0")"
g++ -std=c++17 -O2 -Wall -Wextra -pedantic Source/*.cpp -o Executable/Project_linux

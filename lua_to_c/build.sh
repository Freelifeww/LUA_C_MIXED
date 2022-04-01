#!/bin/bash

mkdir build
cd build
cmake ..
make
cd ..
lua lua_main.lua
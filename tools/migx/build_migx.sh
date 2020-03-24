#!/bin/bash
#
# script to (re)build migx driver
if [ -d build ]; then
    rm -rf build
fi
mkdir build
cd build
env CXXFLAGS=-v cmake ..
make

#!/bin/bash

set -ev
mkdir build 
cd build
cmake ..
make -j4
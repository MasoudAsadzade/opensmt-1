#!/bin/bash

set -ev
mkdir build 
cd build
cmake -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=/home/opensmt-1 ..
make -j4
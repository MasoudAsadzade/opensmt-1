#!/bin/bash

set -ev
cd ${INSTALL}
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${INSTALL} ..
make -j4
#!/bin/bash

set -ev
#cd ${INSTALL}
mkdir build
cd build
cmake ..
make -j4
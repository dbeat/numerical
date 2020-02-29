#!/bin/bash

set -eu pipefail #-euo

mkdir -p build && cd build

# Configure
cmake -DCODE_COVERAGE=ON -DCMAKE_BUILD_TYPE=Debug \
      -DPETSC_DIR=$HOME/build/dbeat/numerical/petsc \
      -DPETSC_ARCH=arch-linux2-c-debug ..
# Build (for Make on Unix equivalent to `make -j $(nproc)`)
cmake --build . --config Debug -- -j $(nproc)
make intricacies
# Test
ctest -j $(nproc) --output-on-failure
# generate documentation
make doc

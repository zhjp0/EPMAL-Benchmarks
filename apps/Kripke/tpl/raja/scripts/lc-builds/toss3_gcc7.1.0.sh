#!/bin/bash

##
## Copyright (c) 2016-18, Lawrence Livermore National Security, LLC.
##
## Produced at the Lawrence Livermore National Laboratory.
##
## LLNL-CODE-689114
##
## All rights reserved.
##
## This file is part of RAJA.
##
## For details about use and distribution, please read RAJA/LICENSE.
##

RAJA_DIR=$(git rev-parse --show-toplevel)

BUILD_SUFFIX=lc_toss3-gcc-7.1.0

rm -rf build_${BUILD_SUFFIX} 2>/dev/null
mkdir build_${BUILD_SUFFIX} && cd build_${BUILD_SUFFIX}

module load cmake/3.9.2

cmake \
  -DCMAKE_BUILD_TYPE=Release \
  -C ${RAJA_DIR}/host-configs/lc-builds//toss3/gcc_7_1_0.cmake \
  -DENABLE_OPENMP=On \
  -DCMAKE_INSTALL_PREFIX=${RAJA_DIR}/install_${BUILD_SUFFIX} \
  "$@" \
  ${RAJA_DIR}

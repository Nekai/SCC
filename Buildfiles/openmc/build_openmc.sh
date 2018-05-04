#!/bin/bash

ROOT_DIR=$HOME/SCC
HDF5_DIR=${ROOT_DIR}/hdf5-1.10.1/
INSTALL_DIR=$HOME/SCC/built/openmc

ml utilities cmake

export HDF5_ROOT=${HDF5_DIR}/build/hdf5

git clone https://github.com/mit-crpg/openmc.git
cd openmc
mkdir build && cd build

cmake -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} ..
make
make install

#!/bin/bash

wget https://support.hdfgroup.org/ftp/HDF5/current/src/hdf5-1.10.1.tar
tar -xf hdf5-1.10.1.tar

cd hdf5-1.10.1
mkdir build && cd build

../configure
make
make check
make install

#!/bin/sh

module purge
module load gnu/4.9.0
module load gnu/4.9.3
module load gnu/openmpi_eth/1.8.4
ompi_info --param mpi all

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-MPI/

make clean
make suite

cd ..

qsub jobs/ivyBridge_MPI_ETH


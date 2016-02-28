#!/bin/sh

module purge
module load intel/2013.1.117
module load intel/openmpi_eth/1.8.2
ompi_info --param mpi all

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-MPI/

make clean
make suite

cd ..

qsub jobs/ivyBridge_MPI_ETH

qsub jobs/nehalem_MPI_ETH

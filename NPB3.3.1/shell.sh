#!/bin/sh

module purge
module load gnu/4.9.0

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-SER/
make clean
make suite

cd ../NPB3.3-OMP/
make clean
make suite

cd ..

qsub jobs/ivyBridge_SER
qsub jobs/ivyBridge_OMP

qsub jobs/nehalem_SER
qsub jobs/nehalem_OMP

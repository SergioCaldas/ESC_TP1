#!/bin/sh

module purge
module load intel/2013.1.117

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-SER/
make clean
make suite

cd ..

qsub jobs/ivyBridge_SER



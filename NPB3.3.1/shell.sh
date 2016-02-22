#!/bin/sh

module purge
module load gnu/4.9.0

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-SER/

make suite

cd ..

qsub ivyBridge

qsub nehalem



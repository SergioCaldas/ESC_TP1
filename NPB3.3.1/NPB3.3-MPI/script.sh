#!/bin/sh

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-SER/bin

sample_size=5

echo "Running CG"
for (( seq_num=1; seq_num <= $sample_size; ++seq_num ))
do
./cg.A.x
done

echo "Running EP"
for (( seq_num=1; seq_num <= $sample_size; ++seq_num ))
do
./ep.A.x
done

echo "Running IS"
for (( seq_num=1; seq_num <= $sample_size; ++seq_num ))
do
./is.A.x
done
echo "Done..."

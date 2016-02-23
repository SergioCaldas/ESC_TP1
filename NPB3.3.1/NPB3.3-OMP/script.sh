#!/bin/sh

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-OMP/bin

max_ppn=24
sample_size=5

export OMP_DYNAMIC=FALSE
export OMP_NUM_THREAD=2

for (( i=2; i <= $max_ppn; i+=2 ))
do
	echo "Running $sample_size * ( $i threads parallel code)"
	for (( sample_num=1; sample_num <= $sample_size; ++sample_num ))
	do
 		./cg.A.x
	done
done

for (( i=2; i <= $max_ppn; i+=2 ))
do
	echo "Running $sample_size * ( $i threads parallel code)"
	for (( sample_num=1; sample_num <= $sample_size; ++sample_num ))
	do
 		./ep.A.x
	done
done

for (( i=2; i <= $max_ppn; i+=2 ))
do
	echo "Running $sample_size * ( $i threads parallel code)"
	for (( sample_num=1; sample_num <= $sample_size; ++sample_num ))
	do
 		./is.A.x
	done
done
echo "Done..."


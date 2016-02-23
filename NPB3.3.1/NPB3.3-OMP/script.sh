#!/bin/sh

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-OMP/

read -r node_info<$PBS_NODEFILE 

cd Results/

mkdir $node_info

cd ../bin

max_ppn=24
sample_size=5


for file in *.x
do
	for (( num_threads=2; num_threads <= $max_ppn; num_threads+=2 ))
	do
		echo "Running ( $num_threads threads parallel code)"
		export OMP_NUM_THREADS $num_threads
		./file >> ../Results/$node_info/"$file.txt"
		dstat -c -d -m --output '../Results/$node_info/$file' >> /dev/null &
		kill $!
		sleep 1
	done
done
echo "Done..."


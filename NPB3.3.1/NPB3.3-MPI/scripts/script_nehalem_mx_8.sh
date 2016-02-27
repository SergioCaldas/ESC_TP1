#!/bin/sh

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-MPI/

read -r node_info<$PBS_NODEFILE 

cd Results/Mx/8

mkdir $node_info

cd ../../../bin

for file in *.8
do
		cd ../Results/Mx/8/$node_info
		/home/a57779/dstat -cdm --output $file.csv >> /dev/null &
		cd ../../../../bin
		mpirun -np 8 --hostfile hostfile_nehalem --report-bindings --mca mtl mx --mca pml cm ./$file >> ../Results/Mx/8/$node_info/"$file.txt"
		kill $!
		sleep 2
done
echo "Done..."


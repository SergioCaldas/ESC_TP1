#!/bin/sh

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-MPI/

read -r node_info<$PBS_NODEFILE 

cd Results/Mx/16

mkdir $node_info

cd ../../../bin

for file in *.16
do
		cd ../Results/Mx/16/$node_info
		/home/a57779/dstat -cdm --output $file.csv >> /dev/null &
		cd ../../../../bin
		mpirun -np 16 --hostfile hostfile_ivybridge --report-bindings --mca mtl mx --mca pml cm ./$file >> ../Results/Mx/16/$node_info/"$file.txt"
		kill $!
		sleep 2
done
echo "Done..."


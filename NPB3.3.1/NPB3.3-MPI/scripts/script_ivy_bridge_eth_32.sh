#!/bin/sh

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-MPI/

read -r node_info<$PBS_NODEFILE 

cd Results/Eth/32

mkdir $node_info

cd ../../../bin

for file in *.32
do
		cd ../Results/Eth/32/$node_info
		/home/a57779/dstat -cdm --output $file.csv >> /dev/null &
		cd ../../../../bin
		mpirun -np 32 --report-bindings --mca btl tcp,sm,self ./$file >> ../Results/Eth/32/$node_info/"$file.txt"
		kill $!
		sleep 2
done
echo "Done..."


#!/bin/sh

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-MPI/

read -r node_info<$PBS_NODEFILE 

cd Results/Eth

mkdir $node_info

cd ../../bin

max_ppn=64

for file in *.x
do
	for (( ppn=2; ppn <= $max_ppn; ppn+=2 ))
	do
		cd ../Results/Eth/$node_info
		/home/a57779/dstat -cdm --output $file.csv >> /dev/null &
		cd ../../../bin
		mpirun -np $ppn --report-bindings --mca btl tcp, sm, self ./$file >> ../Results/Eth/$node_info/"$file.txt"
		kill $!
		sleep 2
	done
done
echo "Done..."


#!/bin/sh

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-MPI/

read -r node_info<$PBS_NODEFILE 

cd Results/

mkdir $node_info

cd ../bin

max_ppn=64

for file in *.x
do
	for (( ppn=2; ppn <= $max_ppn; ppn+=2 ))
	do
		mpirun -np $ppn --report-bindings --mca mtl mx pml cm ./file >> ../Results/Mx/$node_info/"$file.txt"
		/home/a57779/dstat -cdm --output ../Results/Mx/$node_info/$file.csv >> /dev/null &
		kill $!
		sleep 1
	done
done
echo "Done..."


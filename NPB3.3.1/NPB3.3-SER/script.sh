#!/bin/sh

cd ~/ESC_TP1/NPB3.3.1/NPB3.3-SER/

read -r node_info<$PBS_NODEFILE

cd Results/intel

mkdir $node_info

cd ../../bin

sample_size=5

for file in *.x
do
	for (( seq_num=1; seq_num <= $sample_size; ++seq_num ))
	do
		cd ../Results/intel/$node_info 
		/home/a57779/dstat -cdm --output $file.csv >> /dev/null &
		cd ../../../bin
		
		./$file >> ../Results/intel/$node_info/"$file.txt"

		kill $!
		sleep 2
	done
done
echo "Done..."

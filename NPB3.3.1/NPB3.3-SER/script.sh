#!/bin/sh



cd ~/ESC_TP1/NPB3.3.1/NPB3.3-SER/

read -r node_info<$PBS_NODEFILE

cd Results/

mkdir $node_info

cd ../bin

sample_size=10

for file in *.x
do
	for (( seq_num=1; seq_num <= $sample_size; ++seq_num ))
	do
		./$file >> ../Results/$node_info/"$file.txt"
		~/dstat -c -d -m --output ../Results/$node_info/$file.csv >> /dev/null &
		kill $!
		sleep 1
	done
done
echo "Done..."

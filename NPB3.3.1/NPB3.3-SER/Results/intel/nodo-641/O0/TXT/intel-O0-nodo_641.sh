#!/bin/bash

echo "Ficheiro,Tempo,Mop's" >> intel-O0-nodo_641.csv

for ficheiro in *.txt
do
  tempo=`grep 'Time in seconds ' $ficheiro`
  tempo_clean=`echo $tempo | grep -o '[0-9]*\.[0-9]*'`
  best_time=`echo $tempo_clean | grep -o '[0-9]*\.[0-9]*' | sort |  head -1`
  mops=`grep 'Mop/s' $ficheiro`
  mops_clean=`echo $mops | grep -o '[0-9]*\.[0-9]*'`
  bigger_mops=`echo $mops_clean | grep -o '[0-9]*\.[0-9]*' | sort -k1,1nr | head -1`
  echo "$ficheiro,$best_time,$bigger_mops" >> intel-O0-nodo_641.csv
done

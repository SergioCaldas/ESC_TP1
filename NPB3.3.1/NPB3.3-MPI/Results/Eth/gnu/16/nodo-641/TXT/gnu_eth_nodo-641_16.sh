#!/bin/bash

echo "Ficheiro,Processos,Tempo,Mops, Mops/Process" >> gnu-nodo_641_16.csv

for ficheiro in *.txt
do
  tempo=`grep 'Time in seconds ' $ficheiro`
  tempo_clean=`echo $tempo | egrep -o '[0-9]*\.[0-9]*'`

  processes=`grep 'Total processes ' $ficheiro`
  processes_clean=`echo $processes | egrep -o '[0-9]{1,2}'`

  mops=`grep 'Mop/s total' $ficheiro`
  mops_clean=`echo $mops | egrep -o '[0-9]*\.[0-9]*'`

  mops_process=`grep ' Mop/s/process ' $ficheiro`
  mops_process_clean=`echo $mops_process | egrep -o '[0-9]*\.[0-9]*'`

  echo $ficheiro,$processes_clean,$tempo_clean,$mops_clean,$mops_process_clean >> gnu-nodo_641_16.csv
done


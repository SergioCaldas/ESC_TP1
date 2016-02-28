#!/bin/bash

echo "Ficheiro,Tempo,Mop's Total,Threads,Mop's/Thread" >> CSV/cg-A.csv

for ficheiro in cg.A.*
do
  tempo=`grep 'Time in seconds ' $ficheiro`
  tempo_clean=`echo $tempo | egrep -o '[0-9]*\.[0-9]*'`

  threads=`grep 'Avail threads ' $ficheiro`
  threads_clean=`echo $threads | egrep -o '[0-9]{1,2}'`

  mops=`grep 'Mop/s total' $ficheiro`
  mops_clean=`echo $mops | egrep -o '[0-9]*\.[0-9]*'`

  mops_thread=`grep ' Mop/s/thread ' $ficheiro`
  mops_thread_clean=`echo $mops_thread | egrep -o '[0-9]*\.[0-9]*'`

  echo $ficheiro,$tempo_clean,$mops_clean,$threads_clean,$mops_thread_clean >> CSV/cg-A.csv
done

echo "Ficheiro,Tempo,Mop's Total,Threads,Mop's/Thread" >> CSV/cg-B.csv

for ficheiro in cg.B.*
do
  tempo=`grep 'Time in seconds ' $ficheiro`
  tempo_clean=`echo $tempo | egrep -o '[0-9]*\.[0-9]*'`

  threads=`grep 'Avail threads ' $ficheiro`
  threads_clean=`echo $threads | egrep -o '[0-9]{1,2}'`

  mops=`grep 'Mop/s total' $ficheiro`
  mops_clean=`echo $mops | egrep -o '[0-9]*\.[0-9]*'`

  mops_thread=`grep ' Mop/s/thread ' $ficheiro`
  mops_thread_clean=`echo $mops_thread | egrep -o '[0-9]*\.[0-9]*'`

  echo $ficheiro,$tempo_clean,$mops_clean,$threads_clean,$mops_thread_clean >> CSV/cg-B.csv
done

echo "Ficheiro,Tempo,Mop's Total,Threads,Mop's/Thread" >> CSV/cg-C.csv

for ficheiro in cg.C.*
do
  tempo=`grep 'Time in seconds ' $ficheiro`
  tempo_clean=`echo $tempo | egrep -o '[0-9]*\.[0-9]*'`

  threads=`grep 'Avail threads ' $ficheiro`
  threads_clean=`echo $threads | egrep -o '[0-9]{1,2}'`

  mops=`grep 'Mop/s total' $ficheiro`
  mops_clean=`echo $mops | egrep -o '[0-9]*\.[0-9]*'`

  mops_thread=`grep ' Mop/s/thread ' $ficheiro`
  mops_thread_clean=`echo $mops_thread | egrep -o '[0-9]*\.[0-9]*'`

  echo $ficheiro,$tempo_clean,$mops_clean,$threads_clean,$mops_thread_clean >> CSV/cg-C.csv
done

echo "Ficheiro,Tempo,Mop's Total,Threads,Mop's/Thread" >> CSV/ep-A.csv

for ficheiro in ep.A.*
do
  tempo=`grep 'Time in seconds ' $ficheiro`
  tempo_clean=`echo $tempo | egrep -o '[0-9]*\.[0-9]*'`

  threads=`grep 'Avail threads ' $ficheiro`
  threads_clean=`echo $threads | egrep -o '[0-9]{1,2}'`

  mops=`grep 'Mop/s total' $ficheiro`
  mops_clean=`echo $mops | egrep -o '[0-9]*\.[0-9]*'`

  mops_thread=`grep ' Mop/s/thread ' $ficheiro`
  mops_thread_clean=`echo $mops_thread | egrep -o '[0-9]*\.[0-9]*'`

  echo $ficheiro,$tempo_clean,$mops_clean,$threads_clean,$mops_thread_clean >> CSV/ep-A.csv
done

echo "Ficheiro,Tempo,Mop's Total,Threads,Mop's/Thread" >> CSV/ep-B.csv

for ficheiro in ep.B.*
do
  tempo=`grep 'Time in seconds ' $ficheiro`
  tempo_clean=`echo $tempo | egrep -o '[0-9]*\.[0-9]*'`

  threads=`grep 'Avail threads ' $ficheiro`
  threads_clean=`echo $threads | egrep -o '[0-9]{1,2}'`

  mops=`grep 'Mop/s total' $ficheiro`
  mops_clean=`echo $mops | egrep -o '[0-9]*\.[0-9]*'`

  mops_thread=`grep ' Mop/s/thread ' $ficheiro`
  mops_thread_clean=`echo $mops_thread | egrep -o '[0-9]*\.[0-9]*'`

  echo $ficheiro,$tempo_clean,$mops_clean,$threads_clean,$mops_thread_clean >> CSV/ep-B.csv
done

echo "Ficheiro,Tempo,Mop's Total,Threads,Mop's/Thread" >> CSV/ep-C.csv

for ficheiro in ep.C.*
do
  tempo=`grep 'Time in seconds ' $ficheiro`
  tempo_clean=`echo $tempo | egrep -o '[0-9]*\.[0-9]*'`

  threads=`grep 'Avail threads ' $ficheiro`
  threads_clean=`echo $threads | egrep -o '[0-9]{1,2}'`

  mops=`grep 'Mop/s total' $ficheiro`
  mops_clean=`echo $mops | egrep -o '[0-9]*\.[0-9]*'`

  mops_thread=`grep ' Mop/s/thread ' $ficheiro`
  mops_thread_clean=`echo $mops_thread | egrep -o '[0-9]*\.[0-9]*'`

  echo $ficheiro,$tempo_clean,$mops_clean,$threads_clean,$mops_thread_clean >> CSV/ep-C.csv
done

echo "Ficheiro,Tempo,Mop's Total,Threads,Mop's/Thread" >> CSV/is-A.csv

for ficheiro in is.A.*
do
  tempo=`grep 'Time in seconds ' $ficheiro`
  tempo_clean=`echo $tempo | egrep -o '[0-9]*\.[0-9]*'`

  threads=`grep 'Avail threads ' $ficheiro`
  threads_clean=`echo $threads | egrep -o '[0-9]{1,2}'`

  mops=`grep 'Mop/s total' $ficheiro`
  mops_clean=`echo $mops | egrep -o '[0-9]*\.[0-9]*'`

  mops_thread=`grep ' Mop/s/thread ' $ficheiro`
  mops_thread_clean=`echo $mops_thread | egrep -o '[0-9]*\.[0-9]*'`

  echo $ficheiro,$tempo_clean,$mops_clean,$threads_clean,$mops_thread_clean >> CSV/is-A.csv
done

echo "Ficheiro,Tempo,Mop's Total,Threads,Mop's/Thread" >> CSV/is-B.csv

for ficheiro in is.B.*
do
  tempo=`grep 'Time in seconds ' $ficheiro`
  tempo_clean=`echo $tempo | egrep -o '[0-9]*\.[0-9]*'`

  threads=`grep 'Avail threads ' $ficheiro`
  threads_clean=`echo $threads | egrep -o '[0-9]{1,2}'`

  mops=`grep 'Mop/s total' $ficheiro`
  mops_clean=`echo $mops | egrep -o '[0-9]*\.[0-9]*'`

  mops_thread=`grep ' Mop/s/thread ' $ficheiro`
  mops_thread_clean=`echo $mops_thread | egrep -o '[0-9]*\.[0-9]*'`

  echo $ficheiro,$tempo_clean,$mops_clean,$threads_clean,$mops_thread_clean >> CSV/is-B.csv
done

echo "Ficheiro,Tempo,Mop's Total,Threads,Mop's/Thread" >> CSV/is-C.csv

for ficheiro in is.C.*
do
  tempo=`grep 'Time in seconds ' $ficheiro`
  tempo_clean=`echo $tempo | egrep -o '[0-9]*\.[0-9]*'`

  threads=`grep 'Avail threads ' $ficheiro`
  threads_clean=`echo $threads | egrep -o '[0-9]{1,2}'`

  mops=`grep 'Mop/s total' $ficheiro`
  mops_clean=`echo $mops | egrep -o '[0-9]*\.[0-9]*'`

  mops_thread=`grep ' Mop/s/thread ' $ficheiro`
  mops_thread_clean=`echo $mops_thread | egrep -o '[0-9]*\.[0-9]*'`

  echo $ficheiro,$tempo_clean,$mops_clean,$threads_clean,$mops_thread_clean >> CSV/is-C.csv
done

#!bin/bash
CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`

mkdir __memory_usage
mkdir __disk_usage
mkdir __cpu_usage


for file in is.C.x.csv
do
  echo $file
  gawk -f memory_usage.gawk $file > "MEMORY_"$file
  gawk -f disk_usage.gawk $file > "DISK_"$file
  gawk -f cpu_usage.gawk $file > "CPU_"$file
done

mv MEMORY_* __memory_usage
mv DISK_* __disk_usage
mv CPU_* __cpu_usage


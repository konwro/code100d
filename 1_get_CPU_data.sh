#!/bin/bash

# get CPU data and store results in variables
CPU_TEMP=$(vcgencmd measure_temp)
# echo $CPU_TEMP

CPU_CPUS=$(cat /proc/cpuinfo)
# echo $CPU_CPUS

# output results to [date]_CPUdata .txt file with sections
# touch "CPU_data_$(date +"%F %T").txt"

echo "CPU TEMP data:" >> results.txt
echo "$CPU_TEMP" >> results.txt
echo "CPUs used:" >> results.txt
echo "$CPU_CPUS" >> results.txt

cp results.txt "CPU_data_$(date +"%F %T").txt"

# prompt Y/N if  show content of the results file
echo "show results [y/n]?: "
read  ANSW

#echo $ANSW


if [ $ANSW="y" ];
then
        cat  results.txt
fi

rm results.txt

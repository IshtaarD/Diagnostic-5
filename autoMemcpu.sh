#!/bin/bash 

# Objective: 
# Script obtains the current memory and cpu usage of processes on the system and outputs it to a file. Then sends that file to the remote repository every minute. 

#CronJob 


cpuMem=$(ps -eo pid,%cpu,%mem,comm)

echo "$cpuMem" > ~/Desktop/sysMemcpu.txt


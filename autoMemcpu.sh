#!/bin/bash 

# Objective: 
# Script obtains the current memory and cpu usage of processes on the system and outputs it to a file. Then sends that file to the remote repository every minute. 

#Crontab for every minute: * * * * *


cpuMem=$(ps -eo pid,%cpu,%mem,comm)

echo "$cpuMem" > ~/Diagnostic-5/sysMemcpu.txt

git add .

git commit -m "updated MEM and CPU file"

git push origin main 

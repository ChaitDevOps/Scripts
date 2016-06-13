#!/bin/bash
# Script to Get no of Cores for server and finding CPU of All Servers
# Script will Print CPU Usage Report of all Clients (Cores) on the Server 
# Chaitanya Bingu
# cat /proc/cpuinfo - Contains Information on all CPU's on servers.
CPUNO=($(lscpu | grep "^On-line*" | awk -F':' '{print $2}' | sed 's/ //g' | sed 's/,/ /g'))
CPUREPORT=/home/ec2-user/Usage-Report.txt
TIME=$(date | awk '{print $4}')
rm -r $CPUREPORT
echo "Time Of Report: $TIME" >> $CPUREPORT
for i in "${CPUNO[@]}"
	do
		echo "CPU Report for Processor $i" >> $CPUREPORT
		mpstat -P $i >> $CPUREPORT
	done
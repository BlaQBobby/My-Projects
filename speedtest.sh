#!/bin/bash
#intervals internet speed test
#file would by default be stored in your user root directory

echo -e "Enter file to store speed config: " 
read filename
echo -e "Enter interval to run speed test (mins): " 
read interval


newinterval=$(( $interval * 60 ))

while :
do
	now=$(date +"%T")
	echo $now >> $filename
	speedtest-cli >> $filename
	echo "Current Internet speed details being written to... $filename "	
	sleep $newinterval;
done

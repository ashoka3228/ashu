#!/bin /bash

process="docker bash kernel platform"
for i in $process
do
	ps=$(ps -eaf|grep $i |wc -l)
	if [ $ps -ge 2 ]
	then
		echo $i is running
	else
		echo $i it in stop mode
	fi
done

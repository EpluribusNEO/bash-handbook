#!/bin/bash

count=1
if [ $# -gt 0 ]
then
	for i in $@
	do
		echo "$count:> ${i}"
		count=$(($count+1))
	done
fi

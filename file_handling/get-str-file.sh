#!/bin/bash
args_count=1
if [ "$#" -ge "$args_count" ];then
	for f in $@; do
       		printf "\n[-------- $f --------]\n"
		egrep -a -o '\b[[:print:]]{2,}\b' $f
	done

else
	echo Wrong args count!
fi	



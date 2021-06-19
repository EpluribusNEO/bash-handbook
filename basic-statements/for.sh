#!/bin/bash

#
# FOR: loop from start value to end value 
#
echo "FOR: loop from start value to end value"
start=100
end=105
for ((i=$start; i<$end; i++ ))
do
    echo "${i}"
done 


#
# for in range
# range is: {start-value..end-value..step}
# range simple: {1..3} -> "1, 2, 3"; {4..10..2} -> "4, 6, 8, 10"
#
echo "FOR in range"
for obj in {3..10..2}
do
    echo "${obj}"
done  

#
# input command line arguments with FOR
#
if [ $# -gt 0 ]
echo "FOR: input command line arguments"
count=1
then
	for i in $@
	do
		echo "$count:> ${i}"
		count=$(($count+1))
	done
fi

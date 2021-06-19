#!/bin/bash

echo "Enter a number:"
read num

case $num in
	0)
	echo "zero"
	;;
	
	1)
	echo "one"
	;;

	2)
	echo "two"
	;;

	3)
	echo "three"
	;;

	*)
	echo "default"
	;;
esac


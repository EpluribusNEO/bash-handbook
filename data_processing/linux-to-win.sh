#!/bin/bash

# EN:
# end of line = LF -> CR+LF
# end of line = LF -> CR + LF
# convert end of line files
# from Linux to end of line for Windows:
# /EN

# RUS:
# конец строки = LF -> CR+LF
# преобразовать конец строки файлов
# из Linux в конец строки для Windows:
# /RUS

# sed -i 's/$/\r/' fileLinux.txt

if [ $# -eq 2 ] 
then
	cp $1 $2
	sed -i 's/$/\r/' $2 
elif [ $# -eq 1 ];then
	file = 'linux-to-win-out.txt'
	sed -i 's/$/\r/' $file
else
	echo wrong args count
fi

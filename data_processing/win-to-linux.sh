#!/bin/bash


# EN:
# end of line = CR+LF -> LF
# convert end of line files 
# from Windows to end of line for Linux:
# /EN

# RUS:
# конец строки = CR+LF -> LF
# преобразовать конец строки файлов
# из Windows в конец строки для Linux:
# /RUS

# tr -d '\r' < fileWindows.txt > fileLinux.txt

if [ $# -eq 2 ];then
	tr -d '\r' < $1 > $2
elif [ $# -eq 1 ];then
	tr -d '\r' <$1 > win-to-linux-out.txt
else
	echo wrong ars count
fi

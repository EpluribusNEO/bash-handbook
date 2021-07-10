#!/bin/bash
path='*'

if [ $# -ge 1 ];then
        path="$1/*"
fi

for f in $path
do
        stat --printf "%A %F %U %G %s %z %n\n" ${f}
done

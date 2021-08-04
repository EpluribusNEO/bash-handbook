#!/bin/bash
path='*'

if [ $# -ge 1 ];then
        path="$1/*"
fi

for f in $path
do
	sec=$(stat --printf "%Z" ${f})
	time=$(date -d @$sec '+%Y-%m-%d %H:%H')
	stat --printf "%A %h %U %G %s ${time} %n\n" ${f}
done

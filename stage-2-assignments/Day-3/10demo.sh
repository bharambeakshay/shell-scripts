#!/bin/bash -x
date=$(date +%d%m%y)
for file in `ls *.log.1`
do
filename=`echo $file | awk -F . '{print $1}'`
extension=`echo $file |awk -F . '{print $2}'`
mv "$file" "$filename""-""$date"".""$extension"
done

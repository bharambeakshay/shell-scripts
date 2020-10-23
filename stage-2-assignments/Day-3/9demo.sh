#!/bin/bash -x
for file in `ls *.txt`
do
directoryname=`echo $file | awk -F. '{print $1}'`
echo $directoryname
if [-d $directoryname]
then rm -r $directoryname
fi
mkdir $directoryname
mv $file $directoryname
done

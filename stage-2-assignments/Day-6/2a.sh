#!/bin/bash -x
echo "Enter a number"
read n
sum=0
for((i=1;i<=n;i++))
do
  sum=`echo "scale=3; {print sum+1/'$i'}|bc -l"`
done

#!/bin/bash
echo "Enter the value of n"
read n
sum=0
for((i=1;i<=n;i++))
do
   
   harmonicNum=`echo "scale=3; 1/$i" | bc -l`
   echo $harmonicNum
   sum=`echo "scale=3; $sum+$harmonicNum" | bc -l`
done
echo "The harmonic series for $n number is $sum"


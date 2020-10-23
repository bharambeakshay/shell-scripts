#!/bin/bash
echo "Enter the value of n"
read n
for((i=1;i<=n;i++))
do
   val=$((2**$i))
   echo " $i    $val"
done


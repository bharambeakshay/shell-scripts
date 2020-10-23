#!/bin/bash -x
for (( i=1;i<=100;i++ ))
do
  a=$((i%11))
 if [ $a -eq 0 ]
 then
      arr[i]=$a
 else
      echo arr[i]++
 fi
done
echo "Array :${!arr[@]}"

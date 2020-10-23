#!/bin/bash -x
echo "Enter a number"
read num
if  [ $num -eq 1 ]
then
   echo "unit place"
elif  [ $num -eq 10 ]
then
   echo "tens place"
elif  [ $num -eq 100 ]
then
   echo "hundreds place"
elif  [ $num -eq 1000 ]
then
   echo "thousands place"
else
   echo "a number is above thousands place"
fi

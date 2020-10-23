#!/bin/bash
echo "enter a number"
read n
echo "Prime factores are: " 
for (( i=2;i<=$n*$n; i++ )) #As prime factors starts from 2
do
    while [ $((n%i)) == 0 ] 
    do
        echo $i    #Prints the prime number
        n=$((n/$i))
    done
done


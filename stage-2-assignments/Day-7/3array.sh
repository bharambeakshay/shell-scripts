#!/bin/bash -x
echo "Enter a number "
read n
index=0 # if we did not took index , It won't consider repetative prime numbers 
echo "Prime facetors of $n :"
for (( i=2;i<=$n*$n; i++ ))
do
    while [ $((n%i)) == 0 ]
    do
        array[index]=$i
		  ((index++))
        n=$((n/$i))
    done

done
echo "Array of prime factors of given number : ${array[@]}"

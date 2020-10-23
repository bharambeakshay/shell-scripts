#!/bin/bash
read -p "Enter starting number of range " starting_number
read -p "Enter ending number of range " ending_number
echo "Prime numbers are in range of $starting_number and $ending_number are: "
for (( i=$starting_number+1; i <= $ending_number-1; i++ )) #this for loop is for iterating from starting number  to  ending number(i.e.range)
	do
	flag=0
	for (( j=2; j <= $i-1; j++ )) # this for loop checks the prime number iteratively with given if condition
		do
			if [ `expr $i % $j` = 0 ] 
				then
					flag=1
					break
			fi
	done

	if [ $flag -eq 0 ]
		then
			echo $i
	fi
done


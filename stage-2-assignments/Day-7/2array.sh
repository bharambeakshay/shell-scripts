#!/bin/bash 
for ((i=0;i<10;i++))
do
	random=$((RANDOM%100+100))
	nos[$i]=$random
done

echo "Array before sorting: ${nos[@]}"
temp=0
for (( i=0; i<10; i++ ))
do
	for (( j=i+1; j<10; j++ ))
	do
	if [ ${nos[i]} -gt ${nos[$((j))]} ]
	then
	temp=${nos[i]}
	nos[$i]=${nos[$((j))]}
	nos[$((j))]=$temp
	fi
	done
done


echo "Array after sorting:${nos[@]} "
echo "Second smallest:${nos[1]} "
echo "second largest:${nos[8]} "















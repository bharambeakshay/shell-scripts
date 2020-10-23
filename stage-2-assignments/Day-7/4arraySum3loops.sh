#!/bin/bash


echo -n "Enter the Total numbers :"
read length
echo "Enter numbers:"
m=0

while [ $m -lt $length ]
do
    # To input from user
    read array[$m]
    # To increment index
    # by 1, i=i+1
    m=`expr $m + 1`
done


#array=(-1 2 -3 1  4 -5 )
sortout=($(echo ${array[*]} | sort -n))
echo ${sortout[*]}
lenArray=${#sortout[*]}
found=1
for ((i=0;i<$lenArray-2;i++))
do
	for ((j=i+1;i<$lenArray-1;j++))
	do
		 for ((k=j+1;k<$lenArray;k++))
   	 do
			if (( (${sortout[$i]}) + (${sortout[$j]}) + (${sortout[$k]})  == 0 ))
			then
				numArray=(${sortout[$i]},${sortout[$j]},${sortout[$k]})
				echo "The three numbers are: [${numArray[*]}]"
				found=1
			fi
		done

	done
done

if [ found -eq 0 ]
then
echo "No elements found "
fi

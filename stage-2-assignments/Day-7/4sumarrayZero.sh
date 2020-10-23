#!/bin/bash 

echo  "Enter the Total numbers :"
read length
echo "Enter numbers:"
m=0

while [ $m -lt $length ]
do
    # To input from user
    read array[$m]
    # To increment index
    m=`expr $m + 1`
done


echo "${array[@]}"
for ((i=0;i<=length;i++))
do
    sum=$((sum+array[i]))
done
echo " Sum: $sum "
flag=$sum
if [ $flag -eq 0 ]
then
  echo "Array:${array[@]} and there Sum is $sum"
else
  echo "$sum is not equals to zero"
fi

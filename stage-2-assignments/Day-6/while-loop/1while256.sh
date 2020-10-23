#!/bin/bash 
echo -ne "Enter the power for 2: "
read a

result=1
count=0
limit=256 #as stated in problem

while [ $a -ne $count ]
do
   result=$(expr $result \* 2 )
   count=$(expr $count + 1 )

done
if [ $result -gt $limit ] 
then
     echo " The ouput value  is exceeding he value 256 "
else
     echo " 2 power of $count is $result "

fi

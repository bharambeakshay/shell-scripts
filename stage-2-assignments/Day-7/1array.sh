#!/bin/bash
for ((i=0;i<10;i++))
do
	random=$((RANDOM%100 + 100))
	nos[$i]=$random
done

#printing the 3 digit number random number
echo ${nos[@]}
#main loop
smallest=${nos[0]}
greatest=${nos[0]}

for((i=0;i<10;i++))
do
#logic for smallest number
	if [ ${nos[$i]} -lt $smallest ]
	then
		smallest=${nos[$i]}
#logic for greatest number
   elif [ ${nos[$i]} -gt  $greatest ]  
   then
      greatest=${nos[$i]}
fi
done

#printing the smallest and greatest number
#echo "smallest number in array is $smallest"
#echo "greatest number in array is $greatest"


secondSmallest=${nos[0]}
secondGreatest=${nos[0]}
for ((i=0;i<10;i++))
do
	if [ ${nos[i]} -gt $smallest ] && [ ${nos[$i]} -lt $secondSmallest ]
	then
		secondSmallest=${nos[$i]}
	elif [ ${nos[$i]} -lt $greatest ] && [ ${nos[$i]} -ge $secondGreatest ]
	then
		secondGreatest=${nos[$i]}
	fi
done

echo "Second smallest number in array is $secondSmallest "
echo "second largest number in array is $secondGreatest "






















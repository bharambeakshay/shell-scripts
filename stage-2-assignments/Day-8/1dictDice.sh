#! /bin/bash 

declare -A dict=( [num1]=0 [num2]=0 [num3]=0 [num4]=0 [num5]=0 [num6]=0 )
maxIter=10

# Start rolling the dice

while [[ ${dict[num$diceNum]} -lt $maxIter ]]
do
    diceNum=$(( RANDOM%6+1))
    if [ $diceNum -eq 1 ]
    then
        dict["num1"]=$(( ${dict[num1]}+1 ))
    elif [ $diceNum -eq 2 ]
    then
        dict["num2"]=$(( ${dict[num2]}+1 ))
    elif [ $diceNum -eq 3 ]
    then
        dict["num3"]=$(( ${dict[num3]}+1 ))
    elif [ $diceNum -eq 4 ]
      then
        dict["num4"]=$(( ${dict[num4]}+1 ))
    elif [ $diceNum -eq 5 ]
      then
        dict["num5"]=$(( ${dict[num5]}+1 ))
    else
        dict["num6"]=$(( ${dict[num6]}+1 ))
    fi

    # To get Maximum number of time dice number is

    if [[ ${dict[num$diceNum]} -eq maxIter ]]
    then
        max=num$diceNum
    fi
done
 
# to display the elements of dict
for key in "${!dict[@]}"
do
    echo "$key: ${dict[$key]}"
done


# to get minimum value of maxIter
min=10
for key in "${!dict[@]}"
do
    if [[ ${dict[$key]} -lt $min ]]
    then    
        min="${dict[$key]}"
        minKey=$key
    fi
done


echo minimum face is $minKey with count $min
echo maximum face is $max with count $maxIter












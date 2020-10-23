
#!/bin/bash
#Ask the user to think of a number n between 1 to 100
min_num=1
max_num=100
#Then check with the user if the number is less then n/2 or greater using while loop
while [ "$min_num" -le $max_num ]
do
        mid_value=$(((max_num+min_num)/2))
        echo "Your guess is $mid_value"
        echo "If above number is not your guess  then"
        echo "Enter 1 if your number is less than $mid_value"
        echo "Enter 2 if your number is more than $mid_value"
        read num
        if [ $num -eq 1 ]
        then
                max_num=$((mid_value-1))
        elif [ $num -eq 2 ]
        then
                min_num=$((mid_value+1))
        else
                echo "Please enter valid value"
        fi
done
        echo "Your guess is $mid_value" #this is required magic number





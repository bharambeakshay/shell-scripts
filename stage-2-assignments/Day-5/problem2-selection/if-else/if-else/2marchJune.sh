#!/bin/bash
echo "date between March 20 and June 20"
echo  "Enter Date "
read date
echo "Enter Month(in words) "
read month
if [[ $month:u == "march:u" && $date -gt 20 && $date -le 31 ]]
then
    echo "True"
elif [[ $month:u == "april:u" && $date -lt 30 ]]
then
    echo "True"
elif [[ $month:u == "may:u" && $date -lt 31 ]]
then
    echo "True"
elif [[ $month:u == "june:u" && $date -lt 20 ]]
then
     echo "True"
else
     echo "False"
fi

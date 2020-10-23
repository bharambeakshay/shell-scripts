#1/bin/bash -x
value1=$((10+RANDOM%90))
value2=$((10+RANDOM%90))
value3=$((10+RANDOM%90))
value4=$((10+RANDOM%90))
value5=$((10+RANDOM%90))
sum=$(($value1+$value2+$value3+$value4+$value5))
echo $sum
average=$(($sum/5))
echo $average

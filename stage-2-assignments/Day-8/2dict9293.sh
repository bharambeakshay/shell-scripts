#!/bin/bash
#initialization of dictionary
declare -A born92
declare -A born93

for (( i=1;i<=12;i++ ))
do
	born92[$i]=0
	born93[$i]=0 #Initialize of dictionary  element by 0
done


for (( i=1;i<=50;i++ )) # 50 Individual Born
do
	k=$(( RANDOM % 12 + 1 ))
	((born92[$k]++))
	k=$(( RANDOM % 12 + 1 ))
	((born93[$k]++))
done

echo "Total Born in 1992 :"

for (( i=1;i<=12;i++ ))
do
	echo -n "${born92[$i]} "
done
echo ""

echo "Total Born in 1993 :"
for (( i=1;i<=12;i++ ))
do
	echo -n "${born93[$i]} "
done
echo ""




echo -e "Month\t\t\t1992\t\t\t1993"

for (( i=1;i<=12;i++ ))
do

	case $i in
	1)month="January" ;;
	2)month="February" ;;
	3)month="March" ;;
	4)month="April" ;;
	5)month="May" ;;
	6)month="June" ;;
	7)month="July" ;;
	8)month="August" ;;
	9)month="September" ;;
	10)month="October" ;;
	11)month="November" ;;
	12)month="December" ;;
esac


echo -e "$month\t\t\t${born92[$i]}\t\t\t${born93[$i]}"


done

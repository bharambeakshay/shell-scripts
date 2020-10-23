#!/bin/bash
echo " COIN TOSS GAME "
head=0
tail=0
while [ $head -lt 11 ] && [ $tail -lt 11 ]
do
        flip=$((RANDOM%2)) #gives random values between 1 & 0
	#echo "flip: $flip"
        if [ $flip -eq 0 ]
           then
	      # echo "head"
               ((head++))
               echo "head: $head"
        else
           # echo "tail"
           ((tail++))
           echo "tail $tail"
        fi
done
if [ $head -ge 11 ]
then
echo "head is winner"
elif [ $tail -ge 11 ]
then
echo "tail is winner" 
else
echo "Draw"
fi

#!/bin/bash 
random=$((RANDOM)) #takes the random value

HCount=100 #money count
Lcount=100 #money count

 
echo "The game is ON and gambler inversted his money Rs 100"

while [[ $Hcount -le 200 && $Lcount -ge 1 ]]  #moneycount greater than 1 and less than 200 gambler can play
do
     r1=$(expr $random % 10) # last digit
     r2=$(expr $r1 % 2)    #gives in 0 and 1
     
     #the  loop for following condion will iterate upto the Hcount=200 and Lcount=1
     if [ $r2 -eq 0 ]
     then
          Hcount=$(expr $Hcount + 1)
     elif [ $r2 -eq 1 ]
     then
          Lcount=$(expr $Lcount - 1)
     else 
         echo "dummy"
    fi;
#this loop checks the  Hcount and Lcount
    if [[ $Hcount -ge 200 ]]
    then
        echo "Gambler won and reached the goal of 200 "
        break

    elif [ $Lcount -eq 1 ]
    then
        echo  "Gambler lost all money and  broke"
       break
    fi
done

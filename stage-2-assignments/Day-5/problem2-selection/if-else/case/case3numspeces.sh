#!/bin/bash -x
echo "Enter number eg.:1,10,100,1000"
read number

case $number in
   1)echo "This is Ones Place";;
   10)echo "This is Tens Place";;
   100)echo "This is Hundreds Place";;
   1000)echo "This is Thousands Place";;
   *)echo "Number is above Thousands Place";;
esac

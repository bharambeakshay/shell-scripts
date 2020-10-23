#!/bin/bash
tempconversion(){
case $options in
		1)echo "Enter Temperature in (C) : "
			read cel_temp
	    	if [ $cel_temp -ge 0 -a $cel_temp -le 100 ] #checks the range of temperature
	    	then
         	 far_temp=`echo " scale=2; $cel_temp *1.8+32"|bc -l`  #performs operations and gives value upto 2 decimal place 
         	 echo "$cel_temp C = $far_temp F"
	    	else
             echo "Please enter temperature  between 0C to 100C "
         fi;;
      2)echo "Enter temperature (F) : "
        	read far_temp
         if [ $far_temp -ge 32 -a $far_temp -le 212 ]
         then
            cel_temp=`echo "scale=2; ($far_temp-32)*0.55"|bc -l`
            echo "$far_temp F = $cel_temp C"
        	else
            echo "enter the temperature between 32F to 212F "
        fi ;;

      *)echo "Please select 1 or 2 only";;
esac
}
echo "Choose the option"
echo "1. Celsius --> Fahrenheit"
echo "2. Fahrenheit  --> Celsius"
read options
tempconversion $options #calling the function

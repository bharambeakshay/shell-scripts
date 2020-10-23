#!/bin/bash
#!/bin/bash -x
echo "Enter a year"
read year

if [[ $year%400 -eq 0 || $year%4 -eq 0 && $year%100 -ne 0  ]]
then
   echo "It is a leap year"
else
   echo "It is not a leap year"
fi

#!/bin/bash -x 

#WELCOME TO EMPLOYEE WAGE

#These are the Constant Values
isFullTime=1;
isPartTime=2;
empWagePerHr=20
numWorkingDays=20
maxWorkingHrs=100

#Initializing the variable
totalEmpHrs=0
totalWorkingDays=0

#Calculating Wages for a month
while [[ $totalEmpHrs -lt $maxWorkingHrs && $totalWorkingDays  -lt $numWorkingDays ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3))
   case $empCheck in

    $isFullTime)
              empHr=16
               ;;
    $isPartTime)
               empHr=8
                ;;
    *)
       empHr=0
   esac
   totalEmpHrs=$(($totalEmpHrs+$empHr))
   empSalary=$(($empWagePerHr*$empHr)) #Calculating Employee Wage
   totalSalary=$(($totalSalary+$empSalary))
done



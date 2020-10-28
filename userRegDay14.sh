#!/bin/bash
shopt -s extglob


#validate the first name
function validFirstName() {
read -p "Enter the first name:" firstName
patternForFirstName="^[[:upper:]]{1}[[:lower:]]{2,}$"
if [[ $firstName =~ $patternForFirstName ]]
then
        echo "Valid First Name"
else
        echo "Invalid First Name"
fi
}



#validate the last name
function validLastName() {
read -p "Enter the last name:" lastName
patternForLastName="^[[:upper:]]{1}[[:lower:]]{2,}$"
if [[ $lastName =~ $patternForLastName ]]
then
        echo "Valid Last Name"
else
        echo "Invalid Last Name"
fi
}




#validate the email address
function emailPattern(){
read -p "Enter email id : " emailid
#pat="^[a-zA-Z0-9.+_-]+[@][a-zA-Z0-9]+[.]([a-z]|.[a-z])$" #this pattern gives ony 3 conditions true 
#pat="^([a-zA-Z0-9_\-\.]+)+[a-z0-9A-Z]+@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,10})$" # some conditions true and some conditions false
pat="^(([A-Za-z0-9]+((\.|\-|\_|\+)?[A-Za-z0-9]?)*[A-Za-z0-9]+)|[A-Za-z0-9]+)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$" 
#all conditions true
if [[ $emailid =~ $pat ]]
then
	echo "Valid Email Address"
else
	echo "Invalid Email Address"
fi
} 



#approach no. 1


# function validatePassword() {
# echo "Enter your password:" 
# read password
# conditionForPassword="^.{8,}"
# conditionForPassword2="[[:upper:]]+"
# conditionForPassword3="[0-9]{1,}"
# conditionForPassword4="^[0-9A-Za-z]*[!@#$%&][A-Za-z0-9]*$" # conditions for password
# if [[ $password =~ $conditionForPassword ]]
# then
#    if [[ $password =~ $conditionForPassword2 ]]
#    then
#    	if [[ $password =~ $conditionForPassword3 ]]
#       	then
#          	if [[ $password =~ $conditionForPassword4 ]]
#             	then
#                	   echo "Valid Password"
#                 else
#                    echo "Invalid password, password should contain exactly one special character" #4
#             fi
#       else
#       	echo "Invalid password, password should at least one numeric character" #3
#       fi
# 	else
#            echo "Invalid password, password should contain at least one Uppercase alphabet" #2
# 	fi
# else
#    echo "Invalid password, password should be of minimum 8 characters" #1
# fi
# }











#approach 2: password validation

flagPassword=1
function password(){
while(( $flagPassword != 0 ))
do
echo  "Enter Password " 
read pwd
if [[ ${#pwd} -ge 8 && "$pwd" == *[[:upper:]]* && "$pwd" == *[[:lower:]]* && "$pwd" == *[0-9]* && "$pwd" == *[[:punct:]]* ]]
then
        echo "Valid Password"
        flagPassword=0
else
        echo "Invalid Password ,minimum 8 characters,1upper,1Numeric,1Special Character"
fi
done
}










#mobile number validation pattern +91 7558368932

function mobNumberValidation(){
read -p "Enter mobile number:" mobileNum
country_code=91

pat="^\+[0-9]{2}[ ][0-9]{10}$"

if [[ $mobileNum =~ $pat ]]
then
   echo "valid mobile number"
else
   echo "Invalid mobile number"
fi
}



#pincode validation (as sir it has to be include in usercase problem statements)
# pattern  can be matched like ==> 123456 and 123 456
function pinCode(){
echo "Pincode:"
read pincode

pinCodePat="^[1-9]{1}[0-9]{2}\s{0,1}[0-9]{3}$"
if [[ $pincode =~ $pinCodePat ]]
then
   echo "Valid Pincode"
else
   echo "Invalid Pincode"
fi
}







validFirstName

validLastName

emailPattern # it satisfies all conditions as stated in problem sheet for valid and  invalid conditions

#validatePassword

password

mobNumberValidation

pinCode


#OUTPUTS
# kshay@inspiron-15:~/Bridgelabz/Assignments-answers-programs/Day-13$ ./userRegDay14.sh 
# Enter the first name:Akshay
# Valid First Name
# Enter the last name:Bharambe
# Valid Last Name
# Enter email id : akshay@123.com
# Valid Email Address
# Enter Password 
# Akshay@123
# Valid Password
# Enter mobile number:+91 7558368932
# valid mobile number
# Pincode:
# 555 333
# Valid Pincode
# akshay@inspiron-15:~/Bridgelabz/Assignments-answers-programs/Day-13$ 

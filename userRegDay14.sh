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
pat="^(([A-Za-z0-9]+((\.|\-|\_|\+)?[A-Za-z0-9]?)*[A-Za-z0-9]+)|[A-Za-z0-9]+)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$" 
#all conditions true
if [[ $emailid =~ $pat ]]
then
	echo "Valid Email Address"
else
	echo "Invalid Email Address"
fi
} 



# password validation

# 1 special char, upper case , lower case, number, maximun length =8
function password(){
read -p "Enter Password:" password

pat="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@!#$%])(?=.*[a-zA-Z0-9@!#$]).{8,}$"
#pat="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@!#$%])(?=.*[a-zA-Z0-9@!#$]).{8,}$"
if [[ $password =~ $pat ]]
then
   echo "valid password"
else
   echo "Invalid password"
fi
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

emailPattern

password

mobNumberValidation

pinCode


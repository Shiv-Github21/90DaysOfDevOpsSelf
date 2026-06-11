#!/bin/bash

greet(){
echo "Hello $1"
}

do_namaste(){
echo "namaste  $2 and he is from $3"
}

add_two_number(){
  echo "the sum is $(($1 + $2))"
}

read -p "Enter the number one : " num1
read -p "Enter the number second :" num2

add_two_number "$num1"  "$num2"

greet "$1"

# why we are using 1 and 2 and not like 2 and 3 because insise a fun as u enter number start again from 1 so 
# if u are running ./function.sh rahul shiv India 
# for greet hello rahul 
# do_namaste "$2" "$3"
# do_namaste "shiv" "India"
# but again start from one so:
#Function $1 = shiv
#Function $2 = India
#Function $3 = empty

do_namaste "$1" "$2"

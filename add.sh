#!/bin/bash -x

#num1=10
#num2=12

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

result=$(($num1+$num2))
echo "the addition is $result"


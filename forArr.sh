#!/bin/bash -x

for (( i=0; i<6; i++ ))
do
	read -p "Enter a number: " num
	arr[i]=$num
done
echo ${arr[@]}

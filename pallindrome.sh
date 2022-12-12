#!/bin/bash -x

palli=0
function checkPalli(){
	num=$1
	while (( $num>0 ))
	do
		temp=$(( $num%10 ))
		num=$(( $num/10 ))
		palli=$(( $(( $palli*10 ))+$temp ))
	done

	if (( $palli == $1 ))
	then
		echo "The number $1 is pallindrom"
	else
		echo "the number $1 is not pallindrom"
	fi
}

read -p "Enter the number: " num1
result1="$( checkPalli $((num1)) )"
echo $result1

read -p "Enter the number: " num2
result2="$( checkPalli $((num2)) )"
echo $result2

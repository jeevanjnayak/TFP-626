#!/bin/bash -x

for (( i=0; i<10; i++ ))
do
	rannum=$(( $(( RANDOM%900 ))+100 ))
	arr[i]=$rannum
done
echo ${arr[@]}
for (( i=0; i<9; i++ ))
do
	for (( j=$(( $i+1 )); j<10; j++ ))
	do
		if (( ${arr[i]}>${arr[j]} ))
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done
echo ${arr[@]}


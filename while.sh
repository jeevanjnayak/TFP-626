#!/bin/bash -x

i=1

while [ $i -le 5 ]
do
	echo "$i"
	(( i++ ))
done

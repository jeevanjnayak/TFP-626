#!/bin/bash -x

function myFunc() {
	echo $1
}

toss="$( myFunc $((RANDOM%2)) )"

if (($toss==1))
then
	echo "Head"
else
	echo "Tail"
fi

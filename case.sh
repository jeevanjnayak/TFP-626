#!/bin/bash/ -x
fullTime=1
halfTime=2
ranCheck=$((RANDOM%3))

case $ranCheck in
$fullTime)
	echo "employee is present full time";;
$halfTime)
	echo "employee is present halftime";;
*)
	echo "employee is absent"
esac

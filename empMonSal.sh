#!/bin/bash/ -x

fullTime=1
halfTime=2
totalHour=0
perHourSal=50

for (( i=1; i<=31; i++ ))
do
	ranCheck=$((RANDOM%3))

	case $ranCheck in
	$fullTime)
        	empHour=8;;
	$halfTime)
        	empHour=4;;
	*)
        	empHour=0;;
	esac

	totalHour=$(( $totalHour+$empHour ))
done

monthlySal=$(( $perHourSal * $totalHour ))

echo "total hour is $totalHour"
echo "Total monthly salary for this month is $"$monthlySal


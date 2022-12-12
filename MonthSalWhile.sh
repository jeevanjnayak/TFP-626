#!/bin/bash/ -x

fullTime=1
halfTime=2
totalHour=0
perHourSal=50
maxDays=31
i=1
presDay=0
abs=0

while [[ $i -le $maxDays && $presDay -lt 20 ]]
do
        ranCheck=$((RANDOM%3))

        case $ranCheck in
        $fullTime)
                empHour=8
		((presDay++));;
        $halfTime)
                empHour=4
		((presDay++));;
        *)
                empHour=0
		((abs++));;
        esac

        totalHour=$(( $totalHour+$empHour ))
	(( i++ ))
done

monthlySal=$(( $perHourSal * $totalHour ))

echo "total hour is $totalHour"
echo "Days present is $presDay"
echo "Total days absent is $abs"
echo "Total monthly salary for this month is $"$monthlySal

#!/bin/bash/ -x

fullTime=1
halfTime=2
totalHour=0
perHourSal=50
maxDays=31
i=1
presDay=0
abs=0

function getEmpHour(){
	case $1 in
        $fullTime)
                empHour=8;;
        $halfTime)
                empHour=4;;
        *)
                empHour=0;;
        esac
	echo $empHour
}

while [[ $i -le $maxDays && $presDay -lt 20 ]]
do
        dailyHour="$( getEmpHour $((RANDOM%3)) )"

	if (($dailyHour==0))
	then
		((abs++))
	else
		((presDay++))
	fi

        totalHour=$(( $totalHour+$dailyHour ))
        (( i++ ))
done

monthlySal=$(( $perHourSal * $totalHour ))

echo "total hour is $totalHour"
echo "Days present is $presDay"
echo "Total days absent is $abs"
echo "Total monthly salary for this month is $"$monthlySal

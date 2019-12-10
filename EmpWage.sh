#!/bin/bash -x

echo "Welcome To The Employee Wage"

EMP_WAGE_PER_HR=20
FULL_TIME=0
PART_TIME=1

monthlyWage=0
day=1
empTotalWorkingHrs=0

declare -A empDict

function getEmpWorkingHrs()
{
	case $1 in

	$FULL_TIME )

			echo 8
	;;

	$PART_TIME )

			echo 4
	;;

	* )
			echo 0
	;;

	esac

}

function main()
{
while [[ $day -le 20 && $empTotalWorkingHrs -le 100 ]]
do
	empStatus=$((RANDOM%3))
	workingHour=$(getEmpWorkingHrs $empStatus)
	dailyEmpWage=$(( $workingHour*$EMP_WAGE_PER_HR ))
	empTotalWorkingHrs=$(($empTotalWorkingHrs+$workingHour))
	totalEmpWage=$(($EMP_WAGE_PER_HR * $empTotalWorkingHrs))
	empDict[Day$day]="$dailyEmpWage      $totalEmpWage"
	day=$(($day+1))

done

	for(( i=1;i<$day;i++ ))
	do
		echo "Day $i		${empDict[Day$i]}"
	done

}

main

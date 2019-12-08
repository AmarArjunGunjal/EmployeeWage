#!/bin/bash

echo "Welcome To The Employee Wage"

EMP_WAGE_PER_HR=20
FULL_TIME=0
PART_TIME=1

monthlyWage=0
day=1
emp_total_working_Hrs=0


function get_emp_working_hrs()
{
	empStatus=$((RANDOM%3))
	case $empStatus in

	$FULL_TIME )

			emp_working_hr=8
	;;

	$PART_TIME )

			emp_working_hr=4
	;;

	* )
			emp_working_hr=0
	;;

	esac

		echo $emp_working_hr
}


function getDailyEmpWage()
{

	dailyWage=$(( $EMP_WAGE_PER_HR * $1 ))
	echo $dailyWage
}

function main()
{
while [[ $day -le 20 && $emp_total_working_Hrs -le 100 ]]
do

	working_hour=$(get_emp_working_hrs)
	dailyEmpWage=$(getDailyEmpWage $working_hour)
	dailyEmpWageArray[$day]=$dailyEmpWage
	day=$(($day+1))
	emp_total_working_Hrs=$(($emp_total_working_Hrs+$working_hour))
	totalEmpWage=$(($EMP_WAGE_PER_HR * $emp_total_working_Hrs))
	totalEmpWageArray[$day]=$totalEmpWage

done
	echo ${dailyEmpWageArray[@]}
	echo ${totalEmpWageArray[@]}

}

main

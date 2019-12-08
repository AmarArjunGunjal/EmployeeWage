#!/bin/bash

echo "Welcome To The Employee Wage"

EMP_WAGE_PER_HR=20
FULL_TIME=0
PART_TIME=1


empStatus=$((RANDOM%3))

case $empStatus in
	$FULL_TIME )

			emp_working_hr=8
			dailyWage=$(($EMP_WAGE_PER_HR*$emp_working_hr))

	;;

	$PART_TIME )

			emp_working_hr=4
			dailyWage=$(($EMP_WAGE_PER_HR*$emp_working_hr))

	;;

	* )
			echo "Absent"

esac

	echo "$dailyWage"


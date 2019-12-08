#!/bin/bash

echo "Welcome To The Employee Wage"

EMP_WAGE_PER_HR=20
FULL_TIME=0
PART_TIME=1
monthlyWage=0

day=1

while [ $day -le 20 ]
do
empStatus=$((RANDOM%3))
	case $empStatus in

	$FULL_TIME )

			emp_working_hr=8
			dailyWage=$(($EMP_WAGE_PER_HR*$emp_working_hr))
			echo "Day_$day : "$dailyWage
			monthlyWage=$(($monthlyWage+$dailyWage))
	;;

	$PART_TIME )

			emp_working_hr=4
			dailyWage=$(($EMP_WAGE_PER_HR*$emp_working_hr))
			echo "Day_$day : "$dailyWage
			monthlyWage=$(($monthlyWage+$dailyWage))
	;;

	* )

			dailyWage=0
			echo "Day_$day : "$dailyWage
			monthlyWage=$(($monthlyWage+$dailyWage))
	;;

	esac

day=$(($day+1))
done

echo "Monthly Wage : "$monthlyWage

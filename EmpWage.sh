#!/bin/bash

echo "Welcome To The Employee Wage"

EMP_WAGE_PER_HR=20

emp_working_hr=8

empStatus=$((RANDOM%2))

if [ $empStatus -eq 1 ]
then
	echo "Present"
	dailyWage=$(( $EMP_WAGE_PER_HR*$emp_working_hr ))
	echo "$dailyWage"
else
	echo "Absent"
fi

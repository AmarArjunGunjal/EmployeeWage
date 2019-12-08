#!/bin/bash

echo "Welcome To The Employee Wage"

empStatus=$((RANDOM%2))

if [ $empStatus -eq 1 ]
then
	echo "Present"
else
	echo "Absent"
fi

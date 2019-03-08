#!/bin/sh

if [ $# -lt 2 ]
then
	echo "LT3_A1.sh file_1 file_2"
	exit 0
else
	if [ -f $1 -a ! -d $1 -a -f $2 -a ! -d $2 ]
	then
		var1=$(stat -c%s "$1")
		var2=$(stat -c%s "$2")
		if [ $var1 -eq $var2 ]
		then
			echo "The two files are of the same size"
		elif [ $var1 -lt $var2 ]
		then
			echo "$2 is bigger than $1"
		elif [ $var1 -gt $var2 ]
		then
			echo "$1 is bigger than $2"
		fi
		if [ $# -gt 2 ]
		then
			echo "Warning: extra arguments ignored"		
			exit 0
		fi
	else
		echo "There is a problem with one of the files"
		exit 0
	fi
fi

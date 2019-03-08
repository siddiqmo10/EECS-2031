#!/bin/sh

echo "Enter the filename:\c"
read fname

if [ -z $fname ]; then
	exit 
	
elif [ ! -f $fname ]; then
	echo "Not a file"
	exit
fi
terminal=`tty`

exec < $fname
count=1
 
while read line
do
	echo "$count:$line"
	count=`expr $count + 1`
done

exec < $terminal
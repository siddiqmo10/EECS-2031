#!/bin/sh
avg=0
while read -a line || [ -n "$line" ]
do
#echo "${line[0]}"

while read ${line[0]}
do
	if [ "NWLR35MQ" = "${line[0]}" ];then
	sum=`expr ${line[1]} + ${line[2]} + ${line[3]}`
	avg=`expr $sum / 3`
	
done < $1
	
done < $1
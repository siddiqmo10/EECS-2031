#!/bin/sh

echo "Enter a number:\c"
read num
fact=1

while [ $num -gt 0 ]
do
	fact=`expr $num \* $fact`
	num=`expr $num - 1`
done
echo "factorial is: $fact"
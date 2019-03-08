#!/bin/sh

for i in *
do
	size=`stat -c%s "$i"`
	echo "$i in $size bytes"
done

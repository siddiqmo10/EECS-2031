echo "Enter a number:\c"
read num
l=2
while [ $l -lt $num ]
do
	if [ `expr $num % $l` -eq 0 ]; then
		echo "$num is not a prime number"
		echo "since its divisble by $l"
		exit
	fi
	l=`expr $l + 1`
done
echo "$num is a prime number"

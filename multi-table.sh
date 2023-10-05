#!/bin/sh

if [ "$1" = '' ] || [ "$2" = '' ] ; then
	echo "Invalid input"
	return
fi

if [ "$1" -le 0 ] || [ "$2" -le 0 ] ; then
	echo "Input must be greater than 0"
	return
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		mul=`expr $i \* $j`
		printf "%s*%s=%s\t" $i $j $mul
	done
	printf "\n"
done

exit 0


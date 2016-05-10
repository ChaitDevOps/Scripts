#!/bin/bash

echo "Enter number between 1 and 3: \n"
read num

case $num in 
	1) echo "you entered 1"
	;;
	2) echo "you entered 2"
	;;
	3) echo "you entered 3"
	;;
	*) echo "You didn't enter between 1 and 3"
	;;
esac

#!C:/MinGW/msys/1.0/bin/bash

# case esac语句
echo "Input a Number between 1 to 4"
echo -e "Your number is: \c"
read NUM
case $NUM in
	1 ) echo "Y 1"
		;;
	2 ) echo "Y 2"
		;;
	3 ) echo "Y 3"
		;;
	4 ) echo "Y 4"
		;;
	* ) echo "Y not in 1 to 4"
		;;
esac

option="${1}"
case $option in
	-f ) FILE="${2}"
	echo "YOU ${FILE}"
		;;
	-d ) DIR="${2}"
	echo "YOU ${DIR}"
		;;
	* )
	echo "`basename ${0}`: usage: [-f file] | [-d directory]"
	exit 1 # Command to come out of the program with status 1
		;;
esac
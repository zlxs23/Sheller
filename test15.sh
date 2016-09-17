#!C:/MinGW/msys/1.0/bin/bash

# while : 进入 死循环
while :
do
	echo "Input your NUM: "
	read NUM
	case $NUM in
		1|2|3|4|5 ) echo "YOU NUM : $NUM"
			;;
		* ) echo "YOU NOT"
		break
			;;
	esac
	#statements
done

# -a 在这里不起作用!!!!
# for val1 in 1 2 3; do
# 	#statements
# 	for val2 in 0 5; do
# 		#statements
# 		if [[ $val1 -eq 2 -a $val2 -eq 0 ]]; then
# 			#statements
# 			break 2
# 		else
# 			echo "val1 = $val1, val2 = $val2"
# 		fi
# 	done
# done

NUMS="1 2 3 4 5 6 7"
for NUM in $NUMS; do
	#statements
	Q=`expr $NUM % 2`
	if [[ $Q -eq 0 ]]; then
		#statements
		echo "This is an even number"
		continue
	fi
	echo "Found odd number"
done
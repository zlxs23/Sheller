#!C:/MinGW/msys/1.0/bin/bash

a=10
b=20

if [[ $a == $b ]]; then
	#statements
	echo "a = b"
elif [[ $a -gt $b ]]; then
	#statements
	echo "a > b"
else
	echo "a < b"
fi

if test $[2*3] -eq $[1+5]; then echo " 2*3 = 1+5"; fi

num0=$[2*3]
num1=$[1+5]

if test $[num0] -eq $[num1] # 若 then 与此同行 应添加 ;
then
	echo "EQUAL"
else
	echo "NOT"
fi
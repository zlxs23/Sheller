#!C:/MinGW/msys/1.0/bin/bash

# 使用 until 输出 0 to 9
a=0
# ! 与 $a 之间必须有 空格 否则 取反时效
until [[ ! $a -lt 10 ]]; do
	#statements
	echo $a
	a=`expr $a + 1`
done
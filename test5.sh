#!C:/MinGW/msys/1.0/bin/bash

#shell 运算符

# 算术运算符
var=`expr 3 + 3`
echo "Total Value is $var"

a=1
b=2

res=`expr $a + $b`
echo "a + b = ${res}"

res=`expr $a - $b`
echo "a - b = ${res}"

res=`expr $a \* $b`
echo "a * b = ${res}"

# res=`expr $a / $b`
# 不支持 小 除 大 /usr/bin/expr: syntax error
echo "a / b = ${res}"

res=`expr $a % $b`
echo "a % b = $res"

if [ $a == $b ]; then
	#statements
	echo "a is equal to b"
fi

if [ $a != $b ]; then
	#statements
	echo "a is not equal to b"
fi

# 关系运算符
a=10
b=20

if [[ $a -eq $b ]]; then
	#statements
	echo "$a -eq $b : a is equal to b"
else
	echo "$a -eq $b : a is not equal to b"
fi

if [[ $a -ne $b ]]; then
	#statements
	echo "$a -ne $b : a is not equal to b"
else
	echo "$a -ne $b : a is equal to b"
fi

if [[ $a -gt $b ]]; then
	#statements
	echo "$a -gt $b : a is greater than b"
else
	echo "$a -gt $b : a is not greater than b"
fi

if [[ $a -lt $b ]]; then
	#statements
	echo "$a -lt $b : a is less than b"
else
	echo "$a -lt $b : a is not less than b"
fi

if [[ $a -ge $b ]]; then
	#statements
	echo "$a -ge $b : a is greater or equal to b"
else
	echo "$a -ge $b : a is not greater or equal to b"
fi

if [[ $a -le $b ]]; then
	#statements
	echo "$a -le $b : a is less or equal to b"
else
	echo "$a -l3 $b : a is not less or equal to b"
fi

# 布尔运算符
a=10
b=20

if [[ $a != $b ]]; then
	#statements
	echo "$a != $b : a != b"
fi

if [[ $a -lt 100 -a $b -gt 10 ]]; then
	#statements
	echo "$a 100 and $b 10"
else
	echo "X"
fi

if [[ $a -lt 100 -o $b -gt 100 ]]; then
	#statements
	echo "$a 100 or $b 100"
else
	echo "X"
fi

if [[ $a -lt 5 -o $b -gt 100 ]]; then
	#statements
	echo "$a 5 or $b 100"
else
	echo "X"
fi
# http://c.biancheng.net/cpp/view/2736.html
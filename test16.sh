#!C:/MinGW/msys/1.0/bin/bash

# Define your function here
Hello () {
	echo "UEL of me"
}
# Invoke your function
Hello

# 显式添加一个 function keywords
function Hello1 () {
	# function body
}

# withReturn
funWithReturn() {
	echo "The function is to get the sum of two numbers..."
	echo -n "Input first number: "
	read Num0
	echo -n "Input Second number: "
	read Num1
	echo "The two numbers are $Num0 $Num1"
	return $(($Num0 + $Num1))
}
funWithReturn
# Capture value returned by last command
ret=$?
echo "The sum of is $ret"

# 函数嵌套
# calling one function from another
number_one () {
	echo "URL 1"
	number_two
}

number_two () {
	echo "URL 2"
}

number_one

unset .f number_one

number_one
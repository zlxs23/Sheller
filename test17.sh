#!C:/MinGW/msys/1.0/bin/bash

# shell 函数参数
function funcwithParam () {
	echo "First Param : $1"
	echo "Second Param : $2"
	echo "Third Param : $3"
	echo "Fourth Param : $4"
	echo "Length of Param : $#"
	echo "All Param : $*"
}

a="a"
b="b"
c="c"
d="d"

funcwithParam $a $b $c $d
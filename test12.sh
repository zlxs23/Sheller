#!C:/MinGW/msys/1.0/bin/bash

for loop in 1 2 3 4; do
	#statements
	echo "YOU : ${loop}"
done

for str in "a b c d e f g"; do
	#statements
	echo "HEI : ${str}"
done

# 显示主目录(/c/Users/Administrator/)下以 .bash 开头的文件
for testFILE in $HOME/.bash*; do
	#statements
	echo "$testFILE"
done
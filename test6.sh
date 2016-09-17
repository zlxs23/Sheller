#!C:/MinGW/msys/1.0/bin/bash

# shell 注释
# shell 字符串

# 单引号
str='this is a string'
# 双引号
yourName='MZC'
str="HEllo, I know your name is \"${yourName}\"! \n"
echo -e $str
# 不用引号
# 拼接字符串
myName="QQ"
greet0="Hello, "${myName}"!"
greet1="Hello, ${myName}!"
echo $greet0
echo $greet1
if [[ greet0 = greet1 ]]; then
	#statements
	echo "equal"
else
	echo "XXXX"
fi
# 获得字符串长度
length="1234"
echo "${#length}"
# 提取子串
subString="alibaba is a great company"
echo "${subString:0:7}"
# 查找字符串
echo `expr index "$subString" is`
#!C:/MinGW/msys/1.0/bin/bash

#变量

# def var
varName="value"
echo $varName

# use var
myUrl="http://ZILANXINGSHUO@"
echo $myUrl
echo ${myUrl}

# 识别变量边界
for skill in Ada Coffe Action Java; do
	#statements
	echo "I am good at ${skill}Script"
done

# renew def var
myUrl="http://zilanxingshuo@"
echo ${myUrl}

# only2Read var
only2Read="ThisOnly2Read"
readonly only2Read
only2Read="newVAR"
# ./test2.sh: line 25: only2Read: readonly variable

# del var
willDelvar="Thiswilldel"
unset willDelvar
echo ${willDelvar}
# 木有输出(也不报错)
#!C:/MinGW/msys/1.0/bin/bash

#shell 替换

a=10
echo -e "After escape Value of a is $a \n"
echo "Before escape Value of a is $a \n"

#command replace
DATE=`date`
#date 命令 输出当前时间
echo "Date is $DATE"
USERS=`who | wc -l`
#who 命令 输出当前用户
echo "Logged in user are $USERS"
UP=`date ; uptime`
#date uptime 命令 上一天?
echo "Uptime is $UP"

#var replace
var="self"
word="other"
echo ${var}
echo ${var:+$word}
unset var
message="var is deled"
echo ${var:?$message}
unset var
echo ${var:-$word}
echo ${var:=$word}
echo "var's newValue "${var}
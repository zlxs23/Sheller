# !C:/MinGW/msys/1.0/bin/bash

#first shell

# 通过这种方式运行bash脚本，第一行一定要写对，好让系统查找到正确的解释器
# cd shell -- 切换到工作目录
# chmod +x ./test.sh -- 使脚本具有执行权限
# ./test.sh -- 执行脚本
echo "Hellow Bash"
# Author : mazhicheng
# Copyright (c) http://see.xidian.edu.cn/cpp/linux/
# Script follows here:

echo "What is your name?"
read PERSON
# read: 从 stdin 获取输入并赋值给 PERSON 变量，最后在 stdout 上输出
echo "Hello $PERSON"
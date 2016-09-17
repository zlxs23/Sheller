#!C:/MinGW/msys/1.0/bin/bash

# Shell 数组
array=(val0 val1 val2)

echo "${array[2]}"
echo "${array[4]}"

NAME[0]="Zai"
NAME[1]="Bou"
NAME[2]="Bui"
NAME[3]="Mzc"
NAME[4]="Lai"

echo "${NAME[0]}"
echo "${NAME[*]}"
echo "${NAME[@]}"

# 获取长度
echo "${#NAME[*]}"
echo "${#NAME[@]}"
echo "${#NAME[2]}"
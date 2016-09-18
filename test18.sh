#!C:/MinGW/msys/1.0/bin/bash

# 通过 wc -l 命令计算 document 的行数
wc -l << EOF
This is 1
This is 2

This is 4
This is 5
EOF

# 下面的脚本通过 vi 编辑器将 document 保存到 test.txt 文件
filename=test18
vi $filename << EndOfCommands
i
This file was created automatically from
a shell script
^[
ZZ
EndOfCommands
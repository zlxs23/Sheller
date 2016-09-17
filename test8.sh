#!C:/MinGW/msys/1.0/bin/bash

# echo 命令
# 显示转义字符
echo "I am \"HUMAN\""
# 显示变量
name="OK"
echo "I say ${name}"
# 显示换行
echo "1OK \n"
echo -e "2OK \n"
# 显示不换行
echo "3OK \c"
echo '4OK'
# 按原样显示 不转义
echo '5OK \n'
# 显示结果重定向至文件
echo "I will be in test8" > test8
echo "I will be in test8 : 2" >> test8
# 显示命令结果
echo `date`
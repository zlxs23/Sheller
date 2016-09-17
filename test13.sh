#!C:/MinGW/msys/1.0/bin/bash

# while loop
count=0
while [[ $count -lt 5 ]]; do
	#statements
	# 以下表达式 为 `` 间隔号 包含 + 之间 要有空格!!!!
	count=`expr $count + 1`
	echo $count
done
# while循环可用于读取键盘信息。下面的例子中，输入信息被设置为变量FILM，按<Ctrl-D>结束循环
# 默认就是crtl+d中断
echo "type Ctrl+D over"
echo -n "enter you film: "
while read FILM; do
	#statements
	echo "$FILM"
done
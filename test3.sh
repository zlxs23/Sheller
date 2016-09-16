#!C:/MinGW/msys/1.0/bin/bash

#特殊变量

# read testArgs1 testArgs2
# echo "${testArgs1} ++ ${testArgs2}"

#$ -- 当前 Shell 进程 の ID
echo "shell ID == $: "$$

#0 -- 当前 脚本 文件名
echo "shell filename == 0: "$0

#n -- 传递给 脚本 or 函数 の 参数 = n 表示第 n 个参数
echo "shell args == n: "$1

## -- 传递给 脚本 or 函数 の 参数个数
echo "shell args.length == #: "$#

#* -- 传递给 脚本 or 函数 の 所有参数
echo "shell all args == *: "$*

#@ -- 传递个 脚本 or 函数 の 所有参数 被双引号包含时 形式不同
echo "shell all args == @: "$@

#? -- 上个命令的退出状态，或函数的返回值
echo "shell exitStatus OR Return == ?: "$?

#$* and $@ diff
echo "\$*=" $*
echo "\"\$*\"=" "$*"

echo "\$@=" $@
echo "\"\$@\"=" "$@"

echo "1 print each param from \$*"
for var in $*; do
	#statements
	echo "$var"
done
echo "2 print each param from \$@"
for var in $@; do
	#statements
	echo "$var"
done
echo "3 print each param from \"\$*\""
for var in "$*"; do
	#statements
	echo "$var"
done
echo "4 print each param from \"\$@\""
for var in "$@"; do
	#statements
	echo "$var"
done
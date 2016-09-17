# 学习 Shell #

9/16/2016 9:48:39 PM 
### Shell 变量 ###
<http://c.biancheng.net/cpp/view/6999.html>
##### 定义变量 #####
**注意，变量名和等号之间不能有空格，这可能和你熟悉的所有编程语言都不一样。**
同时，变量名的命名须遵循如下规则： 
- 首个字符必须为字母（a-z，A-Z）。
- 中间不能有空格，可以使用下划线（_）。
- 不能使用标点符号。
- 不能使用bash里的关键字（可用help命令查看保留关键字）。

##### 使用变量 #####
变量名外面的花括号是可选的，加不加都行，加花括号是为了帮助解释器识别变量的边界

##### 变量类型 #####
1.  局部变量
局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
2. 环境变量
所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
3. shell变量
shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行

### 特殊变量 ###
<http://c.biancheng.net/cpp/view/2739.html>
	#$
	#0
	#n
	##
	#* {带双引号 循环打印时 以横行 打印}
	#@ {带双引号 循环打印时 依然以 竖行 打印}
	#?

### Shell 替换 ###
<http://c.biancheng.net/cpp/view/2737.html>
##### 转义处理 #####
这里 -e 表示对转义字符进行替换。如果不使用 -e 选项，将会原样输出
可以使用 echo 命令的 -E 选项禁止转义，默认也是不转义的；使用 -n 选项可以禁止插入换行符
##### 命令替换 #####
命令替换是指Shell可以先执行命令，将输出结果暂时保存，在适当的地方输出
\`command\`
注意是反引号，不是单引号，这个键位于 Esc 键下方
##### 变量替换 #####
变量替换可以根据变量的状态（是否为空、是否定义等）来改变它的值
word 支持 初始化定义 $..
- ${var} 	变量本来的值
- ${var:-word} 	如果变量 var 为空或已被删除(unset)，那么返回 word，但不改变 var 的值。
- ${var:=word} 	如果变量 var 为空或已被删除(unset)，那么返回 word，并将 var 的值设置为 word。
- ${var:?message} 	如果变量 var 为空或已被删除(unset)，那么将消息 message 送到标准错误输出，可以用来检测变量 var 是否可以被正常赋值。
若此替换出现在Shell脚本中，那么脚本将停止运行。
- ${var:+word} 	如果变量 var 被定义，那么返回 word，但不改变 var 的值。

### Shell 运算符 ###
<http://c.biancheng.net/cpp/view/2736.html>
##### 算术运算符 #####
	Bash 支持很多运算符，包括算数运算符、关系运算符、布尔运算符、字符串运算符和文件测试运算符。
	原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用
**注意**
-  表达式和运算符之间要有空格，例如 2+2 是不对的，必须写成 2 + 2，这与我们熟悉的大多数编程语言不一样。
- 完整的表达式要被 ` ` 包含，注意这个字符不是常用的单引号，在 Esc 键下边
- ------
- 乘号(*)前边必须加反斜杠(\)才能实现乘法运算；
- if...then...fi 是条件语句，后续将会讲解。
- 条件表达式要放在方括号之间，并且要有空格，例如 [$a==$b] 是错误的，必须写成 [ $a == $b ]

###### 算术运算符列表 ######
	+ 	加法 	`expr $a + $b` 结果为 30。
	- 	减法 	`expr $a - $b` 结果为 10。
	* 	乘法 	`expr $a \* $b` 结果为  200。
	/ 	除法 	`expr $b / $a` 结果为 2。
	% 	取余 	`expr $b % $a` 结果为 0。
	= 	赋值 	a=$b 将把变量 b 的值赋给 a。
	== 	相等。用于比较两个数字，相同则返回 true。 	[ $a == $b ] 返回 false。
	!= 	不相等。用于比较两个数字，不相同则返回 true。 	[ $a != $b ] 返回 true。

##### 关系运算符 #####
关系运算符只支持数字，不支持字符串，除非字符串的值是数字
###### 算术运算符列表 ######
	 eq 	检测两个数是否相等，相等返回 true。 	[ $a -eq $b ] 返回 true。
	-ne 	检测两个数是否相等，不相等返回 true。 	[ $a -ne $b ] 返回 true。
	-gt 	检测左边的数是否大于右边的，如果是，则返回 true。 	[ $a -gt $b ] 返回 false。
	-lt 	检测左边的数是否小于右边的，如果是，则返回 true。 	[ $a -lt $b ] 返回 true。
	-ge 	检测左边的数是否大等于右边的，如果是，则返回 true。 	[ $a -ge $b ] 返回 false。
	-le 	检测左边的数是否小于等于右边的，如果是，则返回 true。 	[ $a -le $b ] 返回 true。

##### 布尔运算符 #####
###### 布尔运算符列表 ######
	 ! 	非运算，表达式为 true 则返回 false，否则返回 true。 	[ ! false ] 返回 true。
	-o 	或运算，有一个表达式为 true 则返回 true。 	[ $a -lt 20 -o $b -gt 100 ] 返回 true。
	-a 	与运算，两个表达式都为 true 才返回 true。 	[ $a -lt 20 -a $b -gt 100 ] 返回 false。
*这里出现了 BUG*
	-a | -o 不反应
###### 布尔运算符列表 ######
	= 	检测两个字符串是否相等，相等返回 true。 	[ $a = $b ] 返回 false。
	!= 	检测两个字符串是否相等，不相等返回 true。 	[ $a != $b ] 返回 true。
	-z 	检测字符串长度是否为0，为0返回 true。 	[ -z $a ] 返回 false。
	-n 	检测字符串长度是否为0，不为0返回 true。 	[ -z $a ] 返回 true。
	str 	检测字符串是否为空，不为空返回 true。 	[ $a ] 返回 true。
	
##### 文件测试运算符 #####
###### 文件测试运算符列表 ######
	-b file 	检测文件是否是块设备文件，如果是，则返回 true。 	[ -b $file ] 返回 false。
	-c file 	检测文件是否是字符设备文件，如果是，则返回 true。 	[ -b $file ] 返回 false。
	-d file 	检测文件是否是目录，如果是，则返回 true。 	[ -d $file ] 返回 false。
	-f file 	检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。 	[ -f $file ] 返回 true。
	-g file 	检测文件是否设置了 SGID 位，如果是，则返回 true。 	[ -g $file ] 返回 false。
	-k file 	检测文件是否设置了粘着位(Sticky Bit)，如果是，则返回 true。 	[ -k $file ] 返回 false。
	-p file 	检测文件是否是具名管道，如果是，则返回 true。 	[ -p $file ] 返回 false。
	-u file 	检测文件是否设置了 SUID 位，如果是，则返回 true。 	[ -u $file ] 返回 false。
	-r file 	检测文件是否可读，如果是，则返回 true。 	[ -r $file ] 返回 true。
	-w file 	检测文件是否可写，如果是，则返回 true。 	[ -w $file ] 返回 true。
	-x file 	检测文件是否可执行，如果是，则返回 true。 	[ -x $file ] 返回 true。
	-s file 	检测文件是否为空（文件大小是否大于0），不为空返回 true。 	[ -s $file ] 返回 true。
	-e file 	检测文件（包括目录）是否存在，如果是，则返回 true。 	[ -e $file ] 返回 true。

9/17/2016 4:17:43 PM 
### Shell 注释 ###
<http://c.biancheng.net/cpp/view/7000.html>
如果在开发过程中，遇到大段的代码需要临时注释起来，过一会儿又取消注释，怎么办呢？
每一行加个#符号太费力了，可以把这一段要注释的代码用一对花括号括起来，定义成一个函数，没有地方调用这个函数，这块代码就不会执行，达到了和注释一样的效果。
### Shell 字符串 ###
<http://c.biancheng.net/cpp/view/7001.html>
单引号字符串的限制：
	单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
	单引号字串中不能出现单引号（对单引号使用转义符后也不行）。
双引号的优点：
	双引号里可以有变量
	双引号里可以出现转义字符
### Shell 数组 ###
<http://c.biancheng.net/cpp/view/7002.html>
bash支持一维数组（不支持多维数组），并且没有限定数组的大小。
类似与C语言，数组元素的下标由0开始编号。获取数组中的元素要利用下标，下标可以是整数或算术表达式，其值应大于或等于0
###### 定义数组 ######
在Shell中，用括号来表示数组，数组元素用“空格”符号分割开。定义数组的一般形式为：
	array_name=(value1 ... valuen)
###### 读取数组 ######
读取数组元素值的一般格式是：
	${array_name[index]}
###### 获取数组的长度 ######
获取数组长度的方法与获取字符串长度的方法相同
###### echo 命令######
<http://c.biancheng.net/cpp/view/7003.html>
从上面可看出，双引号可有可无，单引号主要用在原样输出中
###### printf 命令######
<http://c.biancheng.net/cpp/view/1499.html>
printf 命令用于格式化输出， 是echo命令的增强版。它是C语言printf()库函数的一个有限的变形，并且在语法上有些不同。
	注意：printf 由 POSIX 标准所定义，移植性要比 echo 好。
	如同 echo 命令，printf 命令也可以输出简单的字符串
printf 不像 echo 那样会自动换行，必须显式添加换行符(\n)
	使用格式：
		printf  format-string  [arguments...]
		format-string 为格式控制字符串，arguments 为参数列
这里仅说明与C语言printf()函数的不同：
	printf 命令不用加括号
	format-string 可以没有引号，但最好加上，单引号双引号均可。
	参数多于格式控制符(%)时，format-string 可以重用，可以将所有参数都转换。
	arguments 使用空格分隔，不用逗号。
单引号与双引号效果一样
格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
如果以 %d 的格式来显示字符串，那么会有警告，提示无效的数字，此时默认置为 0
### if else 语句###
<http://c.biancheng.net/cpp/view/7005.html>
if ... else 语句也可以写成一行，以命令的方式来运行
if ... else 语句也经常与 test 命令结合使用
### case esac 语句 ###
<http://c.biancheng.net/cpp/view/7006.html>
case ... esac 与其他语言中的 switch ... case 语句类似，是一种多分枝选择结构。
case 语句匹配一个值或一个模式，如果匹配成功，执行相匹配的命令。case语句格式如下：
	case 值 in
	模式1)
	command1
	command2
	command3
	;;
	模式2）
	command1
	command2
	command3
	;;
	*)
	command1
	command2
	command3
	;;
	esac
;; 与其他语言中的 break 类似，意思是跳到整个 case 语句的最后
*与其他语言中的default类似，意思是啥都没匹配上调到他这里执行
### for循环 ###
<http://c.biancheng.net/cpp/view/7007.html>
列表是一组值（数字、字符串等）组成的序列，每个值通过空格分隔。每循环一次，就将列表中的下一个值赋给变量。
in 列表是可选的，如果不用它，for 循环使用命令行的位置参数。
顺序输出当前列表中的数字
顺序输出字符串中的字符
显示主目录下以 .bash 开头的文件
### while 循环 ###
<http://c.biancheng.net/cpp/view/7008.html>
while循环用于不断执行一系列命令，也用于从输入文件中读取数据；命令通常为测试条件。其格式为：

> while command
> do
> Statement(s) to be executed if command is true
> done

命令执行完毕，控制返回循环顶部，从头开始直至测试条件为假。
### until 循环 ###
<http://c.biancheng.net/cpp/view/7009.html>
until 循环执行一系列命令直至条件为 true 时停止
until 循环与 while 循环在处理方式上刚好相反。一般while循环优于until循环，但在某些时候，也只是极少数情况下，until 循环更加有用。
until 循环格式为：

> until command
> do
> Statement(s) to be executed until command is true
> done

command 一般为条件表达式，如果返回值为 false，则继续执行循环体内的语句，否则跳出循环。
### break continue ###
<http://c.biancheng.net/cpp/view/7010.html>
break命令允许跳出所有循环（终止执行后面的所有循环）
在嵌套循环中，break 命令后面还可以跟一个整数，表示跳出第几层循环。例如：
> break n
continue命令与break命令类似，只有一点差别，它不会跳出所有循环，仅仅跳出当前循环
continue 后面也可以跟一个数字，表示跳出第几层循环
> continue n
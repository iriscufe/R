#CH3

#原子型向量

##判断
is.vector(die)#TRUE
##长度
length(die)#6
##6种原子型向量：双整型double、整型integer、字符型character、逻辑型logical、复数complex、原始类型raw

##查看某个对象是什么类型
die<-c(1,2,3,4,5,6)
typeof(die)#double
int<-c(1L,2L)#数字后加L表示这个数是整型,未加L的整数默认double型
int
typeof(int)#得到上述6种类型

raw(3)#raw(n)生成长度为n的空原始类型向量


#属性
##以原子型向量为基础，赋予它一些属性（attribute）和类（class ）
attributes(die)#Null 查看属性

names(die)#名称属性
dim(die)#维度属性
class(die)#类属性

row.names(DECK)#
levels(DECK)

names(die)<-c('one','two','three','four','five','six')
names(die)

dim(die)<-c(2,3)
die#相当于把它变成矩阵


#矩阵
m<-matrix(die,nrow=2,byrow = T)#指定行数就知道了列数

hand1<-c('ace','king','queen','jack','ten','spades',
         'spades','spades','spades','spades')
matrix(hand1,nrow = 5)
matrix(hand1,ncol = 2)

#数组(矩阵是2维，数组可以2维以上)
ar<-array(c(11:14,21:24,31:34),dim = c(2,2,3))
ar

dim(die)
attributes(die)#运行这个函数时，class属性并不总是显示
class(die)#查看class属性

#########################################

#日期和时间
now<-Sys.time()#现在时间
typeof(now)#double
class(now)# "POSIXct" "POSIXt" 两个类
#POSIXct框架下，时间被储存为距离1970.1.1，0点的秒数
unclass(now)#1584495854移除class属性后，R的某个时间对象是距离1970.1.1，0点的秒数

#1970.1.1，0点以后的1000000秒是哪一天
mil<-1000000
class(mil)<-c("POSIXct","POSIXt")
mil#"1970-01-12 21:46:40 CST"

#############################################

#因子(一个特殊的类)
#是的分类更加简单
#加载或生成数据时，R会将字符串变量转换为因子型(一般应该避免这种自动转换)
gender<-factor(c('male','female','female','male'))
typeof(gender)#"integer"
class(gender)#"factor"
attributes(gender)
#$levels
#[1] "female" "male"  

#$class
#[1] "factor"
unclass(gender)
gender


#将一个因子强制转换为字符串
as.character(gender)

as.logical(1)#TRUE
as.numeric(FALSE)#0


#####################################
#列表

#一种基本对象类型 地位与原子型向量相当

card<-list("ace","hearts",1)
card

#data.frame
df<-data.frame(face=c("ace","two","six"),suit=c("clubs","clubs","clubs"),
               value=c(1,2,3))
df
#   face  suit value
#1  ace clubs     1
#2  two clubs     2
#3  six clubs     3

class(df)#"data.frame"
typeof(df)#"list"
str(df)#查看列名(字符串被储存成了因子)

df<-data.frame(face=c("ace","two","six"),suit=c("clubs","clubs","clubs"),
               value=c(1,2,3),stringsAsFactors = FALSE)
str(df)


#可以为list和向量增加names属性
list(face="ace",suit="hearts",value=1)
c(face="ace",suit="hearts",value=1)

#######################################
head(deck,10)

wirte.csv(deck,file="card.csv",row.names=FALSE)#将deck数据框保存为csv文件,不设行号
getwd()#当前工作目录的路径  
?write.csv

#索引

deck[1,c(1,2,3)]
deck[1:2,1,drop=FALSE]#返回的仍是数据框
#负索引
deck[-(2:52),1:3]#不要2：52行
deck[1,]
deck[1,c(TRUE,TRUE,FALSE)]
deck[1,c("face","suit")]

deck$value#提取列

lst<-list(numbers=c(1,2),logical=TRUE,strings=c("a","b","c"))
lst["numbers"]
lst[["numbers"]]


#
attach(data)
deck$value[c(13,26,39,52)]


#R 七种逻辑运算符
# > >= < <= == != %in%
# a %in% c(a,b,c)表示c(a,b,c)中是否包含a


#R的布尔运算符
# & | xor ! any all
#&且   |或
#xor(con1,con2) con1 和 con2中是否有且仅有一个为真
# !con1 con1是否为假
# any(con1,con2,con3,...)是否至少一个为真

############################################
#NA代表不可用not available

#问题来了：数据中含NA,无法得到计算结果mean()等
vec<-c(1,2,3,NA)
is.na(vec)

#查看R的环境系统
library(pryr)
parenvs(all=TRUE)

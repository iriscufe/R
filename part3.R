#trunc接受一个数值，返回整数部分
trunc(3.14)#3

if (a>b){
  print("A wins")
}else if (a<b){
  print("B wins.")
}else{
  print("Tie.")
}

unname(payouts["DD"])#移除一个对象的名称属性


#S3是R自带的类系统
#一些函数会首先查询对象的S3类，再根据其类属性做响应
#eg:print函数
num<-1000000
print(num)
class(num)<-c("POSIXct","POSIXt")
print(num)
#R 的S3系统有三个组成部分：
#(1)属性(attribute)
#泛型函数(generic function)
#方法(method)

## list和原子型向量是一个级别的 typeof()查出来的是原子型向量的6个类型或是list类型
## data.frame的typeof()是list

#########################################

#属性
names(DECK)
dim(DECK)
class(DECK)

row.names(DECK)
levels(DECK)

#添加属性
attr(one_play,"symbols")<-c("B","o","B")
#为one_play添加一个名为symbols的属性，该属性包含一个字符串向量


##paste函数
##Concatenate vectors after converting to character.
a<-"Hello"
b<-"world"
c<-paste(a,b,sep = "")#"Helloworld"
c


##cat函数
##与print相似，输出结果两侧不添加双引号 且会读转义字符
aa<-"B o B\n$o"
print(aa)#"B o B\n$o"
cat(aa)
#B o B
#$o

############################################
#两个骰子所有可能结果
die<-1:6
rolls<-expand.grid(die,die)
rolls$value<-rolls$Var2+rolls$Var2
rolls

#########################################3
#for循环
for(value in c("My","first","for","loop")){
  print("one run")
}

#########################################
#while循环
while(condition){
  code
}

###########################################3
#repeat循环
#repeat比while循环还要初级，它会一直重复运行某段代码
repeat{
  cash<-cash-1+play()
  n<-n+1
  if(cash<=0){
    break
  }
}


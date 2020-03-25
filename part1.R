#CH1

#CTRL+C程序终止
1:5#1 2 3 4 5

############# tips ###############

ls()#查看已经命名了哪些R对象
args(round)#查看某个函数的所有参数名

#################################

die<-1:6
die-1
die*die#对应元素乘

die+1:2#短向量重复，不成倍数关系会警告。R这种行为称向量循环。

die%*%die#矩阵内乘法（点积）
die2<-2:7
die%o%die2#矩阵外乘法（第i列为die2中的i个元素乘以die向量）

#t(matrix)转置
#det(matrix)求行列式

##常用函数
round(5.66)#四舍五入
round(5.66,digits = 1)#小数点后一位
factorial(3)#阶乘
mean(1:6)
sum(1:6)
sample(x=1:4,size=2,replace = T,prob = NULL)#有放回抽样

##函数
roll<-function(bones=1:6){
  dice<-sample(bones,size=2,replace = T)
  sum(dice)
}
roll()#函数会返回最后一行代码的结果


#CH2
############# tips ########

??apply#按关键词搜索

########################
library(ggplot2)#关闭R 会将加载的包卸载
qplot#ggplot2包 快速绘图quickly plot

x<-c(1,2,3,5,7,4,8)#c函数：创建数值型向量 concatenate collect comnbine
y<-x^3
qplot(x,y)#散点图

x<-c(0,1,1,2,2,2,3,3,4)
qplot(x,binwidth=1)#直方图

##重复执行某个函数/操作
replicate(10,roll())#重复十次roll()
rolls<-replicate(10000,roll())
qplot(rolls)
rolls

##sample()的prob参数给每个部分设置不同权重
roll<-function(){
  die<-1:6
  dice<-sample(die,size=2,replace = T,
               prob = c(1/8,1/8,1/8,1/8,1/8,3/8))
  sum(dice)
}

#CH1

#CTRL+C������ֹ
1:5#1 2 3 4 5

############# tips ###############

ls()#�鿴�Ѿ���������ЩR����
args(round)#�鿴ĳ�����������в�����

#################################

die<-1:6
die-1
die*die#��ӦԪ�س�

die+1:2#�������ظ������ɱ�����ϵ�ᾯ�档R������Ϊ������ѭ����

die%*%die#�����ڳ˷��������
die2<-2:7
die%o%die2#������˷�����i��Ϊdie2�е�i��Ԫ�س���die������

#t(matrix)ת��
#det(matrix)������ʽ

##���ú���
round(5.66)#��������
round(5.66,digits = 1)#С�����һλ
factorial(3)#�׳�
mean(1:6)
sum(1:6)
sample(x=1:4,size=2,replace = T,prob = NULL)#�зŻس���

##����
roll<-function(bones=1:6){
  dice<-sample(bones,size=2,replace = T)
  sum(dice)
}
roll()#�����᷵�����һ�д���Ľ��


#CH2
############# tips ########

??apply#���ؼ�������

########################
library(ggplot2)#�ر�R �Ὣ���صİ�ж��
qplot#ggplot2�� ���ٻ�ͼquickly plot

x<-c(1,2,3,5,7,4,8)#c������������ֵ������ concatenate collect comnbine
y<-x^3
qplot(x,y)#ɢ��ͼ

x<-c(0,1,1,2,2,2,3,3,4)
qplot(x,binwidth=1)#ֱ��ͼ

##�ظ�ִ��ĳ������/����
replicate(10,roll())#�ظ�ʮ��roll()
rolls<-replicate(10000,roll())
qplot(rolls)
rolls

##sample()��prob������ÿ���������ò�ͬȨ��
roll<-function(){
  die<-1:6
  dice<-sample(die,size=2,replace = T,
               prob = c(1/8,1/8,1/8,1/8,1/8,3/8))
  sum(dice)
}
#CH3

#ԭ��������

##�ж�
is.vector(die)#TRUE
##����
length(die)#6
##6��ԭ����������˫����double������integer���ַ���character���߼���logical������complex��ԭʼ����raw

##�鿴ĳ��������ʲô����
die<-c(1,2,3,4,5,6)
typeof(die)#double
int<-c(1L,2L)#���ֺ��L��ʾ�����������,δ��L������Ĭ��double��
int
typeof(int)#�õ�����6������

raw(3)#raw(n)���ɳ���Ϊn�Ŀ�ԭʼ��������


#����
##��ԭ��������Ϊ������������һЩ���ԣ�attribute�����ࣨclass ��
attributes(die)#Null �鿴����

names(die)#��������
dim(die)#ά������
class(die)#������

row.names(DECK)#
levels(DECK)

names(die)<-c('one','two','three','four','five','six')
names(die)

dim(die)<-c(2,3)
die#�൱�ڰ�����ɾ���


#����
m<-matrix(die,nrow=2,byrow = T)#ָ��������֪��������

hand1<-c('ace','king','queen','jack','ten','spades',
         'spades','spades','spades','spades')
matrix(hand1,nrow = 5)
matrix(hand1,ncol = 2)

#����(������2ά���������2ά����)
ar<-array(c(11:14,21:24,31:34),dim = c(2,2,3))
ar

dim(die)
attributes(die)#�����������ʱ��class���Բ���������ʾ
class(die)#�鿴class����

#########################################

#���ں�ʱ��
now<-Sys.time()#����ʱ��
typeof(now)#double
class(now)# "POSIXct" "POSIXt" ������
#POSIXct����£�ʱ�䱻����Ϊ����1970.1.1��0�������
unclass(now)#1584495854�Ƴ�class���Ժ�R��ĳ��ʱ������Ǿ���1970.1.1��0�������

#1970.1.1��0���Ժ��1000000������һ��
mil<-1000000
class(mil)<-c("POSIXct","POSIXt")
mil#"1970-01-12 21:46:40 CST"

#############################################

#����(һ���������)
#�ǵķ�����Ӽ�
#���ػ���������ʱ��R�Ὣ�ַ�������ת��Ϊ������(һ��Ӧ�ñ��������Զ�ת��)
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


#��һ������ǿ��ת��Ϊ�ַ���
as.character(gender)

as.logical(1)#TRUE
as.numeric(FALSE)#0


#####################################
#�б�

#һ�ֻ����������� ��λ��ԭ���������൱

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
str(df)#�鿴����(�ַ����������������)

df<-data.frame(face=c("ace","two","six"),suit=c("clubs","clubs","clubs"),
               value=c(1,2,3),stringsAsFactors = FALSE)
str(df)


#����Ϊlist����������names����
list(face="ace",suit="hearts",value=1)
c(face="ace",suit="hearts",value=1)

#######################################
head(deck,10)

wirte.csv(deck,file="card.csv",row.names=FALSE)#��deck���ݿ򱣴�Ϊcsv�ļ�,�����к�
getwd()#��ǰ����Ŀ¼��·��  
?write.csv

#����

deck[1,c(1,2,3)]
deck[1:2,1,drop=FALSE]#���ص��������ݿ�
#������
deck[-(2:52),1:3]#��Ҫ2��52��
deck[1,]
deck[1,c(TRUE,TRUE,FALSE)]
deck[1,c("face","suit")]

deck$value#��ȡ��

lst<-list(numbers=c(1,2),logical=TRUE,strings=c("a","b","c"))
lst["numbers"]
lst[["numbers"]]


#
attach(data)
deck$value[c(13,26,39,52)]


#R �����߼������
# > >= < <= == != %in%
# a %in% c(a,b,c)��ʾc(a,b,c)���Ƿ����a


#R�Ĳ��������
# & | xor ! any all
#&��   |��
#xor(con1,con2) con1 �� con2���Ƿ����ҽ���һ��Ϊ��
# !con1 con1�Ƿ�Ϊ��
# any(con1,con2,con3,...)�Ƿ�����һ��Ϊ��

############################################
#NA����������not available

#�������ˣ������к�NA,�޷��õ�������mean()��
vec<-c(1,2,3,NA)
is.na(vec)

#�鿴R�Ļ���ϵͳ
library(pryr)
parenvs(all=TRUE)
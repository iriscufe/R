#trunc����һ����ֵ��������������
trunc(3.14)#3

if (a>b){
  print("A wins")
}else if (a<b){
  print("B wins.")
}else{
  print("Tie.")
}

unname(payouts["DD"])#�Ƴ�һ���������������


#S3��R�Դ�����ϵͳ
#һЩ���������Ȳ�ѯ�����S3�࣬�ٸ���������������Ӧ
#eg:print����
num<-1000000
print(num)
class(num)<-c("POSIXct","POSIXt")
print(num)
#R ��S3ϵͳ��������ɲ��֣�
#(1)����(attribute)
#���ͺ���(generic function)
#����(method)

## list��ԭ����������һ������� typeof()���������ԭ����������6�����ͻ���list����
## data.frame��typeof()��list

#########################################

#����
names(DECK)
dim(DECK)
class(DECK)

row.names(DECK)
levels(DECK)

#��������
attr(one_play,"symbols")<-c("B","o","B")
#Ϊone_play����һ����Ϊsymbols�����ԣ������԰���һ���ַ�������


##paste����
##Concatenate vectors after converting to character.
a<-"Hello"
b<-"world"
c<-paste(a,b,sep = "")#"Helloworld"
c


##cat����
##��print���ƣ����������಻����˫���� �һ��ת���ַ�
aa<-"B o B\n$o"
print(aa)#"B o B\n$o"
cat(aa)
#B o B
#$o

############################################
#�����������п��ܽ��
die<-1:6
rolls<-expand.grid(die,die)
rolls$value<-rolls$Var2+rolls$Var2
rolls

#########################################3
#forѭ��
for(value in c("My","first","for","loop")){
  print("one run")
}

#########################################
#whileѭ��
while(condition){
  code
}

###########################################3
#repeatѭ��
#repeat��whileѭ����Ҫ����������һֱ�ظ�����ĳ�δ���
repeat{
  cash<-cash-1+play()
  n<-n+1
  if(cash<=0){
    break
  }
}

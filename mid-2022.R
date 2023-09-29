###Mid-2022(solve)###

Gender<-c("F","M","F","F","F","M","F","M","M","M","F","M","F","F","F")
Height<-c(1.6,2,1.9,1.88,1.7,1.85,1.6,1.7,2.2,2.1,1.8,1.95,1.9,1.8,1.75)
Output1<-c("Short","Tall","Medium","Medium","Short","Medium","Short","Short","Tall","Tall","Medium","Medium","Medium","Medium","Medium")
Output2<-c("Medium","Medium","Tall","Tall","Medium","Medium","Medium","Medium","Tall","Tall","Medium","Medium","Tall","Medium","Medium")
df<-data.frame(Gender,Height,Output1,Output2);df

##a##
#confusion matrix
install.packages("FSelectorRcpp")
library(FSelectorRcpp)
install.packages("caret")
library(caret)
Output1<-as.factor(Output1)
Output2<-as.factor(Output2)
cfm<- confusionMatrix(data=Output2, reference = Output1);cfm

##b##
##Gain information
y1<-df$Gender;y1
y2<-df$Heigh;y2
information_gain(x=df,y=y1)


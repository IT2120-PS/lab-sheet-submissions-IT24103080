#Q1
setwd("C:\\Users\\IT24103080\\Desktop\\IT24103080")
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE)
fix(Delivery_Times)
attach(Delivery_Times)

#Q2
names(Delivery_Times)<-c("X1")
attach(Delivery_Times)

hist(X1,main = "Histrogram for deliver times")

histogram<-hist(X1,main = "Histrogram for deliver times",breaks = seq(20,70,length=10),right=FALSE)

#Q4
breaks <-round(histogram$breaks)
freq <-histogram$counts
mids <-  histogram$mids

cum.freq <- cumsum(freq)

new<-c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}

plot(breaks, new, type ='l',main = "Cumulative Frequecy Polygon for Deliver Times",
     xlab="Deliver Times",ylab = "Cumulative Frequency",ylim=c(0,max(cum.freq)))
cbind(Upper=breaks,CumFreq = new)


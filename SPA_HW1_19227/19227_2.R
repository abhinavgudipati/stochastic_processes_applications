set.seed(12345)

rm(list=ls())

par(mfrow=c(1,2))
x1<-rpois(50,20)
x2<-rpois(100,20)

d1<-density(x1)
d2<-density(x2)
plot(d2,xlab=" Customers Arriving at time T --->",ylab="Probablity ---->",main="Density")
plot(d1,xlab=" Customers Arriving at time T ---> ",ylab="Probablity ---->",main="Density")


plot(ecdf(x1),xlab = 'Time ---->',ylab = 'CDF of arrivals',col='blue')
plot(ecdf(x2),xlab = 'Time ---->',ylab = 'CDF of arrivals',col='red')
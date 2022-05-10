
set.seed(69)

x = rbinom(50, 18, 0.2)

x1 = rbinom(50,1,0.2)
#corresponding mean at t=1
mx1 = mean(x1)
x2 = rbinom(50,2,0.2)
#corresponding mean at t=2
mx2 = mean(x2)
x3 = rbinom(50,3,0.2)
#corresponding mean at t=3
mx3 = mean(x3)
x4 = rbinom(50,4,0.2)
#corresponding mean at t=4
mx4 = mean(x4)
x5 = rbinom(50,5,0.2)
#corresponding mean at t=5
mx5 = mean(x5)

mean <- c(mx1,mx2,mx3,mx4,mx5)

plot(x, type = 'o', lwd = 2, main="Graph of Nt vs t", xlab = 't', ylab = 'Nt')

plot(mean, type = 'o', lwd = 2, main="Graph of E(N(t)) vs various values of t", xlab = 't', ylab = 'E(N(t))',col="blue")




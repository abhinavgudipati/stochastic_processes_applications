
set.seed(69)

run.mc.sim <- function( P, num.iters = 50 ) {
  
  num.states <- nrow(P)
  
  states     <- numeric(num.iters)
  
  states[1]    <- 1
  
  t <-2 
  
  while(t<=num.iters){
    
    p  <- P[states[t-1], ]
    
    states[t] <-  which(rmultinom(1, 1, p) == 1)
    
    t=t+1
  }
  
  return(states)
}

C1 <- c( 1/3, 2/3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)

C2 <- c( 1/3, 1/3, 1/3, 0.0, 0.0, 0.0, 0.0, 0.0)

C3 <- c( 0.0, 1/3, 1/3, 1/3, 0.0, 0.0, 0.0, 0.0)

C4 <- c( 0.0, 0.0, 1/3, 1/3, 1/3, 0.0, 0.0, 0.0)

C5 <- c( 0.0, 0.0, 0.0, 1/3, 1/3, 1/3, 0.0, 0.0)

C6 <- c( 0.0, 0.0, 0.0, 0.0, 1/3, 1/3, 1/3, 0.0)

C7 <- c( 0.0, 0.0, 0.0, 0.0, 0.0, 1/3, 1/3, 1/3)

C8 <- c( 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2/3, 1/3)

P <- t(matrix(c( C1, C2 , C3 , C4 , C5 , C6 , C7 , C8 ),nrow=8,ncol=8))

num.chains     <- 5

num.iterations <- 50

chain.states <- matrix(NA, ncol=num.chains, nrow=num.iterations)

c <- 1 

while(c<=5){
  
  chain.states[,c] <- run.mc.sim(P)
  
  c = c + 1
  
}

matplot(chain.states, type='l', lty=1, col=1:5, ylim=c(0,9), main="plot comparing time to the states of the process",  ylab='STATE', xlab='TIME')

abline(h=1, lty=3)

abline(h=8, lty=3)

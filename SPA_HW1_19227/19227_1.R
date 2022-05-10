#1 (a)
set.seed(12345)
rm(list = ls())

t = c(10, 50, 100, 500)
no_of_arrivals = c()
expectationValues = c(0, 0, 0, 0)
count = 0
p = 0.7
mainList <- vector("list",length = 4)
numberOfArrivals <- vector("list",length = 4)

j=1
while(j<=length(t)){
  b = rbinom(100, size = t[j], prob = p)
  mainList[j] <- b
  plot(b,xlab = 'Time---->',ylab = 'Number of Arrivals--->')
  count = 0
  i = 1 
  while(i <= length(b)){
    count = count + b[i]
    i = i + 1
  }
  numberOfArrivals[j] = count
  count = 0 
  j = j +1 
}
i=1
while(i <= length(numberOfArrivals)){
  expectationValues[i] = numberOfArrivals[[i]] / t[i]
  i = i + 1 
}
print(numberOfArrivals)
print(expectationValues)

#1(B) 

t = c(10, 50, 100, 500)
p = 0.7
mainMatrix = matrix(list(), nrow = 1, ncol = 4)

j=1
while(j<=length(t)){
  b = rbinom(100, size = t[j], prob = p)
  mainMatrix[[1, j]]  = b 
  j = j + 1 
}

color = c('blue', 'green', 'brown', 'red')
i = 1 
while( i<=length(t) ){
  plot(
    density(x = mainMatrix[[1, i]]),
    main = paste('Binomial Distribution for (n=', t[i], ",p=", p = 0.7, ')'),
    ylab = 'Probability ----->',
    xlab = 'Arrivals ----->',
    col = color[i],
    lwd=5
  )
  i = i + 1
}

#1(C) 

i = 1 
while( i<=length(mainList)){
  plot(ecdf(mainMatrix[[1, i]]),col = 'blue')
  i = i + 1
}


# 1(D)

p = 0.1
t = 100
b = rbinom(100, size = 100, prob = p)
plot(
  density(x = b),
  main = paste('Binomial Distributifor (n=', t, ",p=", p = 0.7, ')'),
  ylab = 'Probability ---->',
  xlab = 'Arrivals --->',
  lwd=6
)


# 1(E)

p = 0.7
plot(ecdf(rgeom(100, p)),
     main = paste('Binomial Distribution for (n=', t, ",p=", p = 0.7, ')'),
     ylab = 'CDF ----->',
     xlab = 'X -----> ',
     col='green'
)




set.seed(69)

# number of observations= 50
# size = number of successful trials = 18 
# prob = 0.2 

Sn = rnbinom(50, 18, 0.2)

plot(Sn, type = 'p', lwd = 2, main="plot Stimulating Sn", xlab = 'n', ylab = 'Sn')

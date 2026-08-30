c <- 2000
t <- 1950
h <- 10000
N <- 1000
lambda <- 0.00001

j <- numeric(1950)

p <- exp(-lambda*h)

for (i in 1:1950) {
  
  x <- t - i
  
  p1 <- pbinom(x, prob=p, size=c, lower.tail=TRUE)
  
  j[i] <- p1
}

plot(j, type="l")

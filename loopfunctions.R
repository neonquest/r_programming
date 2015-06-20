x <- list(a = 1:5, b=rnorm(10))
lapply(x, mean)

x <- 1:4
lapply(x, runif, min = 5, max = 8)

x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1))
lapply(x,mean)

y <- sapply(x,mean)


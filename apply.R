# apply over array margins

x <- matrix(rnorm(200), 20, 10)

rows = apply(x, 1, sum)
rows
rowSums(x)

colm = apply(x, 2, mean)
colm
colMeans(x)

quantile(x[1,], probs = c(0.25, 0.75))

y = apply(x, 1, quantile, probs = c(0.25, 0.75))
row.names(y) = c("25th tile", "75th tile")
colnames(y) = c(1:20)

# multi-dim array
a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))
apply(a, c(1,2), mean)
rowMeans(a, dims = 2)


# mapply
mapply(rep, 1:4, 4:1)


noise <- function(n, mean, sd) {
    rnorm(n, mean, sd)
}

noise(5, 1, 2)

noise(1:5, 1:5, 2)

mapply(noise, 1:5, 1:5, 2)


# tapply
x <- c(rnorm(10), runif(10), rnorm(10, 10))
f <- gl(3, 10)
tapply(x, f, mean)
tapply(x, f, range)


# split
split(x, f)

s <- split(airquality, airquality$Month)
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm = T))

x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)

interaction(f1, f2)

str(split(x, list(f1, f2), drop = T))




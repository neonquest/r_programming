library(datasets)
data(iris)

mean(iris[which(iris$Species == "virginica"), "Sepal.Length"])

apply(iris[, 1:4], 2, mean)

class(iris[, 1:4])
class(iris)

data(mtcars)
?mtcars

# 3
tapply(mtcars$mpg, mtcars$cyl, mean)

#4
n <- tapply(mtcars$hp, mtcars$cyl, mean)
abs(n["4"] - n["8"])


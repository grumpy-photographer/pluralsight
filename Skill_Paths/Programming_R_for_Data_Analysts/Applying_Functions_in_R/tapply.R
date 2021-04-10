head(iris)

sapply(iris, class)

tapply(iris$Sepal.Length, iris$Species, mean)

tapply(iris$Sepal.Length, iris$Species, summary)

tapply(iris$Sepal.Length, iris$Species, function(x) x %% 2 == 0)

tapply(iris$Sepal.Length, iris$Species, function(x) sum(x %% 2 == 0))
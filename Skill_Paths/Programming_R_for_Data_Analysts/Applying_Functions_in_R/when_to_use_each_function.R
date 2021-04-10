df <- iris[, 1:4]
head(df)

apply(df, 2, mean)

lapply(df, mean)

sapply(df, mean)

vapply(df, mean, numeric(1))

vapply(df, mean, logical(1))

tapply(iris$Sepal.Length, iris$Species, mean)

replicate(3, runif(1))
rep(runif(1), 3)

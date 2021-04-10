values <- 1:10
values

add_one <- function(x) x + 1
result <- lapply(values, add_one)
result

unlist(result)

head(iris)
lapply(iris, summary)

summary(iris$Petal.Width)

lapply(iris, class)

df <- iris[, 1:4]
head(df)

result <- lapply(df, function(x) x + 100)
result

result$Sepal.Length

typeof(result)

result <- as.data.frame(result)
head(result)

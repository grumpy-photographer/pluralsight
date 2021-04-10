values <- 1:10
values
add_one <- function(x) x + 1

lapply(values, add_one)

sapply(values, add_one)

df <- iris[, 1:4]
head(df)

sapply(df, summary)

x <- c(1, 2, 3, 4, 5)
x

typeof(x)

length(x)

names(x) <- c("One", "Two", "Three", "Four", "Five")

x[2]
x["Two"]
x[2:4]
x[c(3, 5)]
x[c("Three", "Five")]
x[6] <- 6
x

names(x)[6] <- "Six"

x[1] <- '1'
x[1] <- 1
x <- as.numeric(x)

y <- 1
is.vector(y)

y[2] <- 2
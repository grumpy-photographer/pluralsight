m <- matrix(data = c(1, 2, 3, 4), nrow = 2, ncol = 2)
m[1, 2]
m[, 2]
m[1, ]

length(m)

m[1, 1] <- "1"

rownames(m) <- c("First Row", "Second Row")
colnames(m) <- c("First Col", "Second Col")
m

m["First Row"]
m["First Row", "Second Col"]

m[1]
m[2]
m[3]
m[4]

mat <- matrix(1:9, nrow = 3, ncol = 3)
df <- data.frame(one = 1:3, two = 4:6, three = 7:9)

colnames(mat) <- c("One", "Two", "Three")

print(mat)

names(df) <- c("One", "Two", "Three")
colnames(df) <- c("One", "Two", "Three")

print(df)

browser()

"
names vs colnames
row.names vs rownames
rowSums vs rowSum
read.csv and write.csv vs load and save
Sys.time vs system.times
"


print(sum(1, NA, 2, na.rm = T))
print(sum(1, NA, 2, narm = T))

sum(1, NA, 2, na.rm = TRUE)

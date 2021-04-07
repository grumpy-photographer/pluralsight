#creating sets
A <- 1:20
B <- 8:34

#union -> returns all elements
union(A, B)

#intersection -> common
intersect(A, B)

#difference
setdiff(A, B)
setdiff(B, A)

all(c(setdiff(A, B), intersect(A, B), setdiff(B, A)) == union(A, B))

#equal
setequal(A, B)

#comparison
A %in% B
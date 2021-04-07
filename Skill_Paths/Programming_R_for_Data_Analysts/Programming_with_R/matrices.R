#creating a matrix using cbind and rbind
quantity_store_A <- c(7, 6, 3, 6, 9, 4)
quantity_store_B <- c(2, 5, 6, 4, 8, 3)
cbind(quantity_store_A, quantity_store_B)
is.matrix(cbind(quantity_store_A, quantity_store_B))

store_quantity <- rbind(quantity_store_A, quantity_store_B)
store_quantity

quantity_store_C <- c(4, 5, 2, 1, 8, 3)
store_quantity <- rbind(store_quantity, quantity_store_C)
store_quantity

#creating a matrix using the matrix function
matrix_quantity <- matrix(1:18, nrow = 3, byrow = TRUE)
matrix_quantity

#matrix attributes
length(store_quantity)
typeof(store_quantity)
nrow(store_quantity)
ncol(store_quantity)
dim(store_quantity)
col_names <-
  c("apple", "cookie", "lemon", "pizza", "banana", "orange")
colnames(store_quantity) <- col_names
store_quantity

#calculations on rows and columns
rowSums(store_quantity)
colSums(store_quantity)

#selecting elements
store_quantity[1, 2]
store_quantity[1, ]
store_quantity[, 2]
store_quantity[, -2]

#matrix operations
store_quantity
store_quantity + 2
store_quantity + matrix_quantity
store_quantity * matrix_quantity
t(matrix_quantity)
store_quantity %>% t(matrix_quantity)
store_quantity == matrix_quantity

#identity matrix
diag(4)

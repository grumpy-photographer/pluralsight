quantity_store_A <- c(7, 5, 3, 6, 9, 4)
quantity_store_B <- c(2, 5, 6, 4, 8, 3)
quantity_store_C <- c(4, 5, 2, 1, 8, 3)
store_quantity <- rbind(quantity_store_A, quantity_store_B, quantity_store_C)
quantity_day_1 <- store_quantity
quantity_day_2 <- store_quantity * 2
shopping_data <- array(c(quantity_day_1, quantity_day_2), dim = c(3, 6, 2))
shopping_data

#array attributes
length(shopping_data)
typeof(shopping_data)
dim(shopping_data)

#select elements
shopping_data[, , 1]
shopping_data[-2, 1, 2]

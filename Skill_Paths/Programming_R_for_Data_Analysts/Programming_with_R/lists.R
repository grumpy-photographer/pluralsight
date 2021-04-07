#creating a list
quantity_store_A <- c(7, 5, 3, 6, 9, 4)
quantity_store_B <- c(2, 5, 6, 4, 8, 3)
quantity_store_C <- c(4, 5, 2, 1, 8, 3)
store_quantity <-
  rbind(quantity_store_A, quantity_store_B, quantity_store_C)

quantity <- list(quantity_store_A, store_quantity)
quantity

#selecting elements
basket_details <- list(
  store = "store A",
  product = c("apple", "cookie"),
  price = c(2.3, 2)
)
basket_details
basket_details[[1]]
basket_details[['product']]
basket_details$product
basket_details[[3]][2]

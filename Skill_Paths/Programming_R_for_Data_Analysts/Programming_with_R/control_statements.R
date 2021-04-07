price <- 100
if (price < 100) {
  print("price < budget")
} else if (price == 100) {
  print("price == budget")
} else {
  print("price > budget")
}

price <- c(58, 100, 110)
if (price < 100) {
  print("price < budget")
} else if (price == 100) {
  print("price == budget")
} else {
  print("price > budget")
}

#any function
if (any(price < 100)) {
  print("At least one price is under budget.")
} else {
  print("Not all the prices are under the budget.")
}

price <- 58
if (price > 50 && price < 100) {
  print("The price is between 50 and 100.")
} else {
  print("The price is not between 50 and 100.")
}

#vectorized if else
price <- c(58, 100, 110, 200, 30)
ifelse(price < 100,
       "The price is less than 100.",
       "The price is greater than 100.")

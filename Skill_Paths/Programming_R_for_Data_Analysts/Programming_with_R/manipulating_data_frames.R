#Creating data frames
product <-
  c(
    'apple',
    'cookie',
    'phone',
    'lemon',
    'laptop',
    'pizza',
    'apple',
    'cookie',
    'phone',
    'lemon',
    'laptop',
    'pizza'
  )
category <-
  c(
    'groceries',
    'groceries',
    'electronics',
    'groceries',
    'electronics',
    'groceries',
    'groceries',
    'groceries',
    'electronics',
    'groceries',
    'electronics',
    'groceries'
  )
price <- c(1.3, 2, 500, 0.5, 1000, 9, 1.3, 2, 650, 0.5, 950, 9)
quantity <- c(4, 6, 1, 3, 1, 9, 4, 6, 1, 3, 1, 9)
discount <-
  c(FALSE,
    TRUE,
    TRUE,
    TRUE,
    FALSE,
    FALSE,
    FALSE,
    TRUE,
    FALSE,
    TRUE,
    FALSE,
    FALSE)
discount_value <-
  c(0, 0.25, 0.10, 0.15, 0, 0, 0, 0.25, 0, 0.15, 0, 0)

shopping_data <-
  data.frame(
    product,
    category,
    price,
    quantity,
    discount,
    discount_value,
    budget = c(200, 150, 3000, 240, 3000, 170, 350, 320, 740, 160, 290, 440),
    stringsAsFactors = FALSE
  )

#manipulating data frames
print(shopping_data)
shopping_data[c(1:3), 1]
shopping_data[, 3]
shopping_data[1, 3]

shopping_data$product[1:3]
shopping_data$price
shopping_data$price[1]

#the difference between outputsr
shopping_data[, 1]
shopping_data[[1]]
shopping_data[1]
is.vector(shopping_data[, 1])
is.vector(shopping_data[[1]])
is.data.frame(shopping_data[1])

#adding a new column using list format
shopping_data$store <-
  c('A', 'B', 'B', 'B', 'A', 'B', 'A', 'B', 'B', 'A', 'A', 'A')
shopping_data

#adding a new column using matrix format
price_discounted <- price - (price * discount_value)
shopping_data <- cbind(shopping_data, price_discounted)
shopping_data

#adding a new row
new_product <-
  data.frame(
    product = "cake",
    category = 'groceries',
    price = 10,
    quantity = 1,
    discount = FALSE,
    discount_value = 0,
    budget = 500,
    store = 'A',
    price_discounted = 10
  )
shopping_data <- rbind(shopping_data, new_product)
shopping_data

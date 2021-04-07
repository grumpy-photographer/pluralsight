#install.packages("tidyverse")
#install.packages("dplyr")
library(tidyverse)
library(dplyr)
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
price <- c(1.3, 2, 500, 0.5, 1000, 9, 1.3, 2, 650, 0.5, 1200, 9)
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
#Adding new columns and new rows
shopping_data$store <-
  c('A', 'B', 'B', 'B', 'A', 'B', 'A', 'B', 'B', 'A', 'A', 'A')
new_product <-
  data.frame(
    product = "cake",
    category = 'groceries',
    price = 10,
    quantity = 1,
    discount = FALSE,
    discount_value = 0,
    budget = 500,
    store = 'A'
  )
shopping_data <- rbind(shopping_data, new_product)
shopping_data

products <- shopping_data %>%
  select(product,
         category,
         price,
         quantity,
         discount_value,
         budget,
         store) %>%
  filter(budget >= 200) %>%
  arrange(desc(price)) %>%
  mutate(price_discounted = price - (price * discount_value)) %>%
  group_by(category, store) %>%
  summarise(sum(quantity))
products

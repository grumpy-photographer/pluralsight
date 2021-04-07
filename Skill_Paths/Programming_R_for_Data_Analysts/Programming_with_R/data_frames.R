# Creating data frames
product <- c(
    "apple",
    "cookie",
    "phone",
    "lemon",
    "laptop",
    "pizza",
    "apple",
    "cookie",
    "phone",
    "lemon",
    "laptop",
    "pizza"
)
category <- c(
    "groceries",
    "groceries",
    "electronics",
    "groceries",
    "electronics",
    "groceries",
    "groceries",
    "groceries",
    "electronics",
    "groceries",
    "electronics",
    "groceries"
)
price <- c(1.3, 2, 500, 0.5, 1000, 9, 1.3, 2, 650, 0.5, 950, 9)
quantity <- c(4, 6, 1, 3, 1, 9, 4, 6, 1, 3, 1, 9)
discount <- c(FALSE,
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

shopping_data <- data.frame(
    product,
    category,
    price,
    quantity,
    discount,
    discount_value,
    budget = c(200, 150, 3000, 240, 3000, 170, 350, 320, 740, 160, 290, 440)
)
View(shopping_data)

# changing the vector names
dataset <- data.frame(
    x = product,
    category,
    price,
    quantity,
    discount,
    discount_value,
    budget = c(200, 150, 3000, 240, 3000, 170, 350, 320, 740, 160, 290, 440)
)
dataset

# looking at the data
names(shopping_data)
dim(shopping_data)
head(shopping_data)
tail(shopping_data)
head(shopping_data, n = 2)
tail(shopping_data, n = 2)
str(shopping_data)

# keeping product and category as character and not as a factor
shopping_data <- data.frame(
    product,
    category,
    price,
    quantity,
    discount,
    discount_value,
    budget = c(200, 150, 3000, 240, 3000, 170, 350, 320, 740, 160, 290, 440),
    stringsAsFactors = FALSE
)
str(shopping_data)
typeof(shopping_data)
class(shopping_data)
summary(shopping_data)

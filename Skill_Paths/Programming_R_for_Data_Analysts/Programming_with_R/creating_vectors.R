#character vection
assign("product", c("apple", "cookie", "lemon", "pizza"))
product
is.vector(product)
typeof(product)
length(product)
nchar(product)

#double vector
price <- c(1.3, 2, 0.5, 9)
price
length(price)
str(price)

#names
price2 <- c("apple" = 1.3, "cookie" = 2, "lemon" = 0.5, "pizza" = 9)
price2

names(price) <- product
price
str(price)

#scan function
quantity <- scan()
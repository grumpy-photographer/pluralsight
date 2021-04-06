#creating vectors
assign("product", c("apple", "cookie", "lemon", "pizza"))
price <- c(1.3, 2, 0.5, 9)
names(price) <- product
quantity <- scan()

#sort, order & rank
sort(price, decreasing = TRUE)
sort(price)

price
order(price)

max(price)
which.max(price)

rank(price)

#selecting elements
product[2]
product[-2]
product[c(3:4)]
price["lemon"]
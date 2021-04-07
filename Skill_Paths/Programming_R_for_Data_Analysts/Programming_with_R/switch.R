quantity <- c(1, 3, 4, 5)
average_quantity <- function(quantity, type) {
  switch(type,
    arithmetic = mean(quantity),
    geometric = prod(quantity) ^ (1 / length(quantity)))
}
average_quantity(quantity, "arithmetic")
average_quantity(quantity, "geometric")
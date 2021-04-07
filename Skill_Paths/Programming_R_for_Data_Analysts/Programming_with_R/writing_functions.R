add <- function(x, y) {
  x + y
}
add(x = 1, y = 2)
add(1, 2)
add(1)

#transform y into default argument
add <- function(x, y = 0) {
  z <- x + y
  return(z)
}
add(1)
add(4, 6)

#calculate max
price <- c(1.3, 2, 500, 0.5, 1000, 9, 1.3, 2, 650, 0.5, 1200, 9)
get_max <- function(x) {
  max <- x[1]
  for (i in 2:length(x)) {
    if (x[i] > max) {
      max <- x[i]
    }
  }
  return(max)
}
get_max(price)

#add a warning message
price <- c(1, 4, -1)
get_max <- function(x) {
  if (any(x < 0)) {
    warning("Object has negative values.")
  }
  max <- x[1]
  for (i in 2:length(x)) {
    if (x[i] > max) {
      max <- x[i]
    }
  }
  return(max)
}
get_max(price)

#add the stop function
get_max <- function(x) {
  if (all(x < 0)) {
    stop("Object has only negative numbers.")
  }
  max <- x[1]
  for (i in 2:length(x)) {
    if (x[i] > max) {
      max <- x[i]
    }
  }
  return(max)
}
price <- c(-1, -4, -1)
get_max(price)
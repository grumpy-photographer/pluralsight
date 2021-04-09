new_values <- function() {
  a <- 1
  b <- 2
  c <- 3
  list(
        objects = ls.str(environment())
    )
}

new_values()

environment(new_values)

environment(median)
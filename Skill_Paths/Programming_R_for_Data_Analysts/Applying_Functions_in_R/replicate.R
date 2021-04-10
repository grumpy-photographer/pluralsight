replicate(3, "value")

rep("value", 3)

runif(1)

rep(runif(1), 3)

replicate(3, runif(1))

get_random_obs <- function() {
  n_rows <- nrow(iris)
  random_row <- sample(n_rows, 1)
  iris[random_row,]
}

get_random_obs()

replicate(3, get_random_obs())
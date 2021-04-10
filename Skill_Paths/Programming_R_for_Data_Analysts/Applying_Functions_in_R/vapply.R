values <- 1:10
values
add_one <- function(x) x + 1

vapply(values, add_one)

vapply(values, add_one, numeric(1))

vapply(values, add_one, logical(1))

sapply(1:10, function(x) x %% 2)

vapply(1:10, function(x) x %% 2, logical(1))

vapply(1:10, function(x) as.logical(x %% 2), local(1))
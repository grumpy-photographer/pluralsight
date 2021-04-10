df <- mtcars[1:4, 1:4]
df

add_one <- function(x) {
  x + 1
}

apply(df, 2, add_one)

apply(df, 2, function(x) x + 1)

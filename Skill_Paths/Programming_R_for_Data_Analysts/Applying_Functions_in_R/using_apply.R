df <- mtcars[1:4, 1:4]
df

apply(df, 1, min)

apply(df, 2, min)

add_one <- function(x) {
  x + 1
}

df

apply(df, 2, add_one)

df <- mtcars[1:4, 1:4]
apply(df, 2, function(n) {
  lo <- 0
  hi <- n
  for (i in 1:1000) {
    mid <- (lo + hi) / 2
    if (mid * mid == n) return()
  }
})

root <- function(n) {
  lo <- 0
  hi <- n
  for (i in 1:1000) {
    mid <- (lo + hi) / 2
    if (mid * mid == n) return(mid)
    if (mid * mid > n) hi <- mid
    else lo <- mid
  }
  return(mid)
}
apply(df, 2, root)
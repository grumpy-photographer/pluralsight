library(rlang)

e <- env()

e$c <- 3
e$c

e[["c"]]

get("c", envir = e)
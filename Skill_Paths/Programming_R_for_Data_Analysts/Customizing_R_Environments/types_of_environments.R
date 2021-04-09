emptyenv()
search()

baseenv()
ls(baseenv())

globalenv()
ls(globalenv())

library(pryr)
x <- 5
where("x")
where("simplify2array")
where("anova")
where("coef")
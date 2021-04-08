lst <- list(1, 2, 3)
lst

lst[1]

typeof(lst[1])

lst[[1]]

typeof(lst[[1]])

names(lst) <- c("First", "Second", "Third")
lst

lst$First

typeof(lst$First)

namedlst <- list("First" = 1, "Second" = 2, "Third" = 3)
namedlst

lst[[4]] = 4
lst

lst[[4]] <- c(1, 2, 3)
lst

length(lst)

lst[[5]] <- function(x) x * 2
lst[[5]](2)
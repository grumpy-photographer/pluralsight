val <- NA

set.val <- function() {
  val <- "Hello world?"
}

set.val()

print(val)

browser()

# Double arrow

really.set.val <- function() {
  val <<- "Hello world!"
}

really.set.val()

print(val)

browser()

# Return value

return.val <- function() {
  return("Returning the world")
}

val <- return.val()

print(val)

browser()

# Environment reference

the.world <- new.env()
the.world$val <- NA

refrence.val <- function() {
  the.world$val <- "Refrencing the world!"
}

reference.val()

print(the.world$val)

browser()

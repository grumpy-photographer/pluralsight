values <- 1:10
values

values[1] + 1
values[2] + 1
values[3] + 1
values[4] + 1
values[5] + 1

add_one <- function(x) {
  x + 1
}

add_one(values[1])
add_one(values[2])
add_one(values[3])
add_one(values[4])
add_one(values[5])

for (i in values) {
  print(add_one(i))
}
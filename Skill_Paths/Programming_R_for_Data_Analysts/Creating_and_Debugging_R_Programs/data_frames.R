dat <- data.frame("FirstColumn" = c(1, 2, 3, 4), "SecondColumn" = c(4, 3, 2, 1))
dat

rownames(dat) <- c("First", "Second", "Third", "Fourth")

dat[1]

typeof(dat[1])

dat[[1]]

typeof(dat[[1]])

dat["FirstColumn"]

dat[1,]

dat[, 1]

dat$FirstColumn

length(dat)

nrow(dat)

ncol(dat)

dim(dat)
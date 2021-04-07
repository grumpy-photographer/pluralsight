#creating factors
product <- c("apple", "laptop", "cookie", "lemon", "phone")
category <-
  c("groceries",
    "electronics",
    "groceries",
    "groceries",
    "electronics")
factor_category <- factor(category)
factor_category

#structure
str(factor_category)

#changing the default order of levels
factor_category <-
  factor(category, levels = c("groceries", "electronics"))
str(factor_category)

#ordering the levels
mass_scale <- factor(c("ml", "gr", "kg"), ordered = TRUE)
mass_scale

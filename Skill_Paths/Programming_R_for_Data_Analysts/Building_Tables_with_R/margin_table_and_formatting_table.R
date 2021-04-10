setwd("pluralsight/Skill_Paths/Programming_R_for_Data_Analysts/Building_Tables_with_R")

crf <- read.table(
    "./data/Carved_Rock_Fitness.csv",
    header = TRUE,
    sep = ","
)

my2table <- table(
    crf$Membership_Status,
    crf$Zip) # A will be rows, B will be columns

my2table # print table

ftable(margin)

prop2table <- prop.table(my2table)
marginprop <- addmargins(prop2table)
ftable(marginprop)

library(questionr)
pct <- prop_table(
    my2table,
    total = TRUE,
    percent = TRUE
)
pct
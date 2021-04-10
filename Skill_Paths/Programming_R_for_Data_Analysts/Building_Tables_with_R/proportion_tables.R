setwd("pluralsight/Skill_Paths/Programming_R_for_Data_Analysts/Building_Tables_with_R")

crf <- read.table(
    "./data/Carved_Rock_Fitness.csv",
    header = TRUE,
    sep = ","
)

my2table <- table(
    crf$Membership_Status,
    crf$Zip)
my2table

prop2table <- prop.table(my2table)
prop2table

perc <- (100 * prop2table)
perc

my3table <- table(crf$Membership_Status, crf$Zip, crf$Gender)
ftable(my3table)

prop3table <- prop.table(my3table)
prop3table

perc3 <- (100 * prop3table)
perc3
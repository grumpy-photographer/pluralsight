setwd("pluralsight/Skill_Paths/Programming_R_for_Data_Analysts/Building_Tables_with_R")

crf <- read.table(
    "./data/Carved_Rock_Fitness.csv",
    header = TRUE,
    sep = ","
)

my2table <- table(
    crf$Membership_Status,
    crf$Age_Group) # A will be rows, B will be columns

my2table # print table
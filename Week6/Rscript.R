library(janitor)
library(tidyverse)
data(storms)

# Make every packages available
data(package = .packages(all.available = TRUE))

toy <- data.frame(var1 = c(1, 2, 3, 4, 5, 6), Var2 = c("a", "b", "c", "d", "e", "f"))


# **** NOT RECOMMANDED but good to know ****
# View a Excel-like interface to modify the data frame
# edit(toy)
# fix(toy)
# To overwrite the data frame with this command, use toy <- edit(toy)

save(toy, file = "Week6/data/toy.RData")
load(file = "Week6/data/toy.RData")

# Students dataset , we change the "NA" string to regular logic "N/A"
students <- read_csv2(file = "Week6/data/student.csv", na = c("NA", "N/A"))

students <- clean_names(students)

fullname <- students$`full_name`

# install.packages(eurostat)
library(eurostat)

# Search for eurostat info
educ <- search_eurostat("education")


install.packages(gtrendsr)
library(gtrendsR)
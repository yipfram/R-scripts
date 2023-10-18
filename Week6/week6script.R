library(tidyverse)

data(storms)
data(package = .packages(all.available = TRUE))
toy <- data.frame(var1 = c(1, 2), var2 = c("a", "b"))
toy <- edit(toy)

save(toy, file = "data/toy.RData")
load(file = "data/toy.RData")

#students dataset
students <- read_csv2(file = "data/students.csv",
                      na = c("NA", "N/A"))

fullname <- students$`Full Name`
install.packages("janitor")
library(janitor)
students <- clean_names(students)

#download data from websites
install.packages("eurostat")
library(eurostat)
educ <- search_eurostat("education")
educ_level_regional <- get_eurostat("educ_uoe_enra11")

install.packages("gtrendsR")
library(gtrendsR)
ai <- gtrends("AI")[[1]]

library(rvest)
aviation <- read_html(
  "https://en.wikipedia.org/wiki/Aviation_accidents_and_incidents") |>
  html_table() %>%
  `[[`(2)
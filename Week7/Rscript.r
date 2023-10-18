# install.packages("car")
library(car)

data(Salaries)
summary(Salaries)
# View(Salaries)

# Categorical variables
data <- table(Salaries$rank, Salaries$sex)
# Pie need a table in input
# This pie function is not recomanded
pie(data)

library(tidyverse)
ggplot(data = Salaries) +
  geom_bar(aes(x = rank))

mean(Salaries$salary)
quantile(Salaries$salary, probs = c(0.1, 0.9))
# 10% of the teachers earn less than 77 380.8$ and 90% of the teacher earn less than 152 946$ # nolint

# Create a histogram
ggplot(data = Salaries) +
  geom_histogram(aes(x = salary))

# Comparing groups by inputing a list
t.test(Salaries$salary ~ Salaries$sex)
# Year from phd to the time they start to work on service is significant (around 4.7yrs)
t.test(Salaries$yrs.since.phd, Salaries$yrs.service, paired = TRUE)

# Need two numerical variable
cor.test(Salaries$yrs.service, Salaries$salary)
# Correlation coef is 0.335
# P_value is smaller than 0.5, then reject H0 (new hypothesis) so there is a significant relationship

# Categorical vs numerical (rank and salary)
oneway.test(Salaries$salary ~ Salaries$rank)
# Conclusion : P_value < 0.05, reject H0

chisq.test(table(Salaries$rank , Salaries$sex))
# Significance level 0.01
# p-value > 0.01 , We don't reject the H0, 
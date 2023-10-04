library(tidyverse)
data(storms)

ggplot(data = storms, mapping = aes(x = wind, 
                                    y = pressure)) +
                                    geom_point(aes(color = status)) + # nolint
                                    geom_smooth(method = "lm") +
                                    labs(title = "Wind speed and air pressure of storms", # nolint
                                    x = "Max wind spee (Knots)") # nolint

ggsave("storms.png")

ggplot(storms,  aes(x = month,
                    fill = status)) +
                    geom_bar() + # nolint
                    scale_x_discrete(limits = c(1:12)) +
                    labs(y = element_blank())
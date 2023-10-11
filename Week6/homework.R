library(dplyr)
data(mpg)
mpg_home <- mpg |>
    select(starts_with("auto", FALSE,  mpg$trans))|>
    filter(class == "suv")


#   mutate(man_mod = paste(manufacturer, model),
#          hwy_gal_per_100 = 100 / hwy) |>
#   group_by(man_mod) |>
# #   summarise(count = n(),
#             avg_hwy_gal_per_100 = mean(hwy_gal_per_100, na.rm = TRUE)) |>
#   arrange(desc(avg_hwy_gal_per_100))
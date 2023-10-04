data(storms)
data(mtcars)
# install.packages("tidyverse")
library(tidyverse)
library(dplyr)

# Filter cars that have disp bigger than 200 and put it in mtcars_tr variable and add mpg_disp wich is mpg*disp
mtcars_tr <- mtcars |> filter(disp > 200) |> # nolint
                    select(mpg, disp) |> # nolint: indentation_linter.
                    mutate(mpg_disp = mpg * disp)

mtcars_groups <- mtcars |>
                group_by(cyl) |>
                summarise(avg_disp = mean(disp), 
                obs = n())

# Select * FROM Storms WHERE "Year" >= 2004 AND status == hurricane FROM name and FROM Year to Hour
storms_impact <- storms |>
                filter(year >= 2004, status == "hurricane") |>
                mutate(impact = wind * hurricane_force_diameter) |>
                select(name, year:hour, impact) |>
                arrange(desc(impact))

storms_summary <- storms_impact |>
                group_by(year) |>
                slice_max( impact, n = 1, with_ties = FALSE)
view(storms_summary) 

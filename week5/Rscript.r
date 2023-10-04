data(mtcars)
# install.packages("tidyverse")
library(tidyverse)
library(dplyr)

# Filter cars that have disp bigger than 200 and put it in mtcars_tr variable
mtcars_tr <- mtcars |> filter(disp > 200) |> # nolint
                    select(mpg, disp) |> # nolint: indentation_linter.
                    mutate(mpg_disp = mpg * disp)

view(mtcars_tr)

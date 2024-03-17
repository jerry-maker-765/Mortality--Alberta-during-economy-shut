install.packages("arrow")
library(arrow)
library(janitor)
library(knitr)
library(lubridate)
library(tidyverse)


alberta_cod_clean <- alberta_cod %>%

  mutate(total_deaths = as.numeric(total_deaths)) %>%
  filter(!is.na(total_deaths)) %>%
  filter(cause != '( Blank )')


# Write the cleaned data to a CSV file
write_csv(
  x = alberta_cod_clean,
  file = "input/data/alberta_cod_clean.csv"
)

write_parquet(x = alberta_cod,
              sink = "input/data/alberta_cod_clean.parquet")

library(arrow)
library(tidyverse)
library(boot)
library(broom.mixed)
library(collapse)
library(dataverse)
library(gutenbergr)
library(janitor)
library(knitr)
library(marginaleffects)
library(modelsummary)
library(rstanarm)

alberta_cod <-
  read_csv(
    "https://open.alberta.ca/dataset/03339dc5-fb51-4552-97c7-853688fc428d/resource/3e241965-fee3-400e-9652-07cfbf0c0bda/download/deaths-leading-causes.csv",
    skip = 2,
    col_types = cols(
      `Calendar Year` = col_integer(),
      Cause = col_character(),
      Ranking = col_integer(),
      `Total Deaths` = col_integer()
    )
  ) |>
  clean_names() |>
  add_count(cause) |>
  mutate(cause = str_trunc(cause, 30))

write_csv(
  x = alberta_cod,
  file = "input/data/alberta_cod.csv"
)
write_parquet(x = alberta_cod,
              sink = "input/data/alberta_cod.parquet")

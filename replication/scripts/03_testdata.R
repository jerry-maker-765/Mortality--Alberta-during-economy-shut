library(readr)
alberta_cod_clean <- read_csv(here::here("input/data/alberta_cod_clean.csv"))

# Test if the data collection of this dataset starts from 2001 and ends in 2022
test_year_range <- all(alberta_cod_clean$calendar_year >= 2001 & alberta_cod_clean$calendar_year <= 2022, na.rm = TRUE)

# Test if every value in this column is an integer
test_year_integer <- all(alberta_cod_clean$calendar_year == floor(alberta_cod_clean$calendar_year), na.rm = TRUE)

# Test if the data in 'cause' column is all character
test_cause_character <- all(sapply(alberta_cod_clean$cause, is.character))

# Test if the data in 'ranking' column is between 1 and 30 inclusively and are all integers
test_ranking_range <- all(alberta_cod_clean$ranking >= 1 & alberta_cod_clean$ranking <= 30, na.rm = TRUE)
test_ranking_integer <- all(alberta_cod_clean$ranking == floor(alberta_cod_clean$ranking), na.rm = TRUE)

# Test if the data in 'total_deaths' column is all positive integers
test_total_deaths_positive <- all(alberta_cod_clean$total_deaths > 0, na.rm = TRUE)
test_total_deaths_integer <- all(alberta_cod_clean$total_deaths == floor(alberta_cod_clean$total_deaths), na.rm = TRUE)

# Test if the data in 'n' column is all between 1 and 22 inclusively and are all integers
test_n_range <- all(alberta_cod_clean$n >= 1 & alberta_cod_clean$n <= 22, na.rm = TRUE)
test_n_integer <- all(alberta_cod_clean$n == floor(alberta_cod_clean$n), na.rm = TRUE)

# Combine and print test results
test_results <- list(
  test_year_range = test_year_range,
  test_year_integer = test_year_integer,
  test_cause_character = test_cause_character,
  test_ranking_range = test_ranking_range,
  test_ranking_integer = test_ranking_integer,
  test_total_deaths_positive = test_total_deaths_positive,
  test_total_deaths_integer = test_total_deaths_integer,
  test_n_range = test_n_range,
  test_n_integer = test_n_integer
)

print(test_results)
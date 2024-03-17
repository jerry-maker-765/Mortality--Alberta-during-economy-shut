## Overview

This project investigates the leading causes of death in Alberta, focusing on the year 2010 as a representative period following the Great Recession. It examines the impact of chronic diseases, cardiovascular diseases, and tumors on mortality over the past 20 years and predicts future trends using Poisson and negative binomial regression models. The study aims to highlight the persistent threat of these diseases despite advances in medical technology and urges governments to promote disease prevention and awareness.

## Authors

- Jierui Miao
- Shenze Lu

## Repository Structure

inputs
- data - contains all the data files to be used for analysis and in the tables and figures
  - alberta_cod.csv - dataset includes the variables of "calender_year", "cause", "ranking", "total_deaths", "n"
  - alberta_cod.parquet
  - alberta_cod_clean.csv - A cleaned version of alberta_cod.csv that clean the rows contain NA and (Blank) value
  - alberta_cod_clean.parquet
- llm
  - usage.txt - The conversation history with ChatGPT
- sketches
- 

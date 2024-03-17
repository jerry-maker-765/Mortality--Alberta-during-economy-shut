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
- figure1.jpg
- figure2.jpg
outputs
  - Mortality_Alberta.pdf
  - Mortality_Alberta.qmd 
  - references.bib - reference list for Mortality_Alberta.pdf
replication
- figures
 - fig-one-1.pdf
 - fig-one-2.pdf
 - fig-two-1.pdf
-scripts
 - 00_simulation.R
  - 01_downloaddata.R
  - 02_cleandata.R
  - 03_testdata.R

## LLM

This report uses LLM (chat-gpt 4) for the writing part of the code, details can be found in usage.txt to view the usage log.

## Reproducibility

Download all files and open the R project project.Rproj in R Studio.

To replicate the paper, convert outputs/Mortality_Alberta.qmd to pdf format.

To replicate the code, run outputs/Mortality_Alberta.qmd in R studio.

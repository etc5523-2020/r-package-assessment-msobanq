#' World Covid-19 Data
#' 
#' This dataset countains covid-19 data on **all** countries.
#' 
#' @description the data is used in the app and is extensive, it not only focuses on the status of corona virus cases but also gives data on other factors that might be contributing to the pandemic.
#' 
#' @source 
#' The data below was obtained from https://ourworldindata.org/coronavirus
#' 
#' #' @format A data frame with 47,749 observations and 41 variables:
#'
#' - **iso_code**: Country id 
#' - **continent**: Name of Continent 
#' - **location**: Country's name
#' - **date**: Date of observation recorded
#' - **total_cases**: Accumulated total confirmed cases of COVID-19
#' - **new_cases**: Daily new positive confirmed cases of COVID-19
#' - **new_cases_smoothed**: Daily new confirmed cases of COVID-19 smoothed for a period of 7 days
#' - **total_deaths**: Total deaths attributed to COVID-19
#' - **new_deaths**: New deaths attributed to COVID-19
#' - **new_deaths_smoothed**: New deaths attributed to COVID-19 smoothed for a period of 7 days
#' - **total_cases_per_million**: Daily positive COVID-19 new cases recorded 
#' - **new_cases_per_million**:	New confirmed cases of COVID-19 per 1,000,000 people	
#' - **new_cases_smoothed_per_million**:	New confirmed cases of COVID-19 smoothed for a period of 7 days per 1,000,000 people	
#' - **total_deaths_per_million**:	Total deaths recorded to COVID-19 per 1,000,000 people	
#' - **new_deaths_per_million**:	New deaths recorded to COVID-19 per 1,000,000 people	
#' - **new_deaths_smoothed_per_million**:	New deaths attributed to COVID-19 smoothed for a period of 7 days per 1,000,000 people	
#' - **total_tests**:	Total tests for COVID-19	locally
#' - **new_tests**:	New tests for COVID-19	locally
#' - **new_tests_smoothed**:	New tests for COVID-19 smoothed for a period of 7 days. For countries that don't report testing data on a daily basis, we assume that testing changed equally on a daily basis over any periods in which no data was reported. This produces a complete series of daily figures, which is then averaged over a rolling 7-day window	National government reports
#' - **total_tests_per_thousand**:	Total tests for COVID-19 per 1,000 people	
#' - **new_tests_per_thousand**:	New tests for COVID-19 per 1,000 people
#' - **new_tests_smoothed_per_thousand**:	New tests for COVID-19 smoothed for a period of 7 days per 1,000 people	
#' - **tests_per_case**:	Tests conducted per new confirmed case of COVID-19
#' - **positive_rate**:	COVID-19 tested positive
#' - **tests_units**:	Units used for testing
#' - **stringency_index**:	Government Response Stringency Index
#' - **population**:	Population of country
#' - **population_density**:	Number of people divided by land area per sqkm 
#' - **median_age**:	Median age of the population
#' - **aged_65_older**:	percentage of populatioon 65 years and older
#' - **aged_70_older**:	percentage of populatioon 70 years and older 
#' - **gdp_per_capita**:	Gross domestic product at purchasing power parity 
#' - **extreme_poverty**:	Percentage of population living in extreme poverty
#' - **cardiovasc_death_rate**:	Death rate from cardiovascular disease 
#' - **diabetes_prevalence**:	percentage of diabetic patients
#' - **female_smokers**:	female smokers ratio
#' - **male_smokers**:	male smokers ratio
#' - **handwashing_facilities**:	hand washing facilities availabe
#' - **hospital_beds_per_thousand**:	Hospital beds per 1,000 
#' - **life_expectancy**:	Life expectancy in a country
#' - **human_development_index**:	human development and standard of living
#' 
#' 
#' 
"covid_data"
 

<!-- README.md is generated from README.Rmd. Please edit that file -->

# covidham

<!-- badges: start -->

<!-- badges: end -->

The goal of covidham is to is for user to get access to the covid data
set, functions and the application.

## Installation

<!-- You can install the released version of covidham from [CRAN](https://CRAN.R-project.org) with: -->

<!-- ``` r -->

<!-- install.packages("covidham") -->

```` 

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("etc5523-2020/r-package-assessment-msobanq")
````

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(covidham)
library(tibble)
library(dplyr)

# the data set is huge so only a few variables are selected for a more appropriate vignette

covid_data %>% filter(continent == "Asia") %>% 
  select(location, 
         date, 
         total_cases, 
         stringency_index) %>% tibble()
#> # A tibble: 11,408 x 4
#>    location    date       total_cases stringency_index
#>    <chr>       <chr>            <dbl>            <dbl>
#>  1 Afghanistan 2019-12-31           0               NA
#>  2 Afghanistan 2020-01-01           0                0
#>  3 Afghanistan 2020-01-02           0                0
#>  4 Afghanistan 2020-01-03           0                0
#>  5 Afghanistan 2020-01-04           0                0
#>  6 Afghanistan 2020-01-05           0                0
#>  7 Afghanistan 2020-01-06           0                0
#>  8 Afghanistan 2020-01-07           0                0
#>  9 Afghanistan 2020-01-08           0                0
#> 10 Afghanistan 2020-01-09           0                0
#> # ... with 11,398 more rows
```

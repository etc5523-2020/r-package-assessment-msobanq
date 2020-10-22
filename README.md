
<!-- README.md is generated from README.Rmd. Please edit that file -->

# covidham

<!-- badges: start -->

[![R build
status](https://github.com/etc5523-2020/r-package-assessment-msobanq/workflows/R-CMD-check/badge.svg)](https://github.com/etc5523-2020/r-package-assessment-msobanq/actions)
<!-- badges: end -->

The goal of covidham is to is for user to get access to the covid data
set, functions and the application.

## Installation

<!-- You can install the released version of covidham from [CRAN](https://CRAN.R-project.org) with: -->

<!-- ``` r -->

<!-- install.packages("covidham") -->

<!-- ``` -->

Access the development version from
[GitHub](https://github.com/etc5523-2020/r-package-assessment-msobanq)
with:

``` r
# install.packages("devtools")
devtools::install_github("etc5523-2020/r-package-assessment-msobanq")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(covidham)
library(tibble)
library(dplyr)


# data set used in the app, and loaded into the package for user to use

covid_data 
```

This function will allow the users to get access to one of the plots
from the app.

``` r
covidham::stringency()
```

To launch the app use the function

``` r
covidham::launch_app()
```

Launching the app should take you to this page of the app

<div class="figure" style="text-align: center">

<img src="inst/extdata/app launch page.PNG" alt="The Landing Page of my Shiny App" width="100%" />

<p class="caption">

The Landing Page of my Shiny App

</p>

</div>

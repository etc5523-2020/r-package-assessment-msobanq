---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->

```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "man/figures/README-",
  out.width = "100%"
)
```

# covidham

<!-- badges: start -->
<!-- badges: end -->

The goal of covidham is to ...

## Installation

<!-- You can install the released version of covidham from [CRAN](https://CRAN.R-project.org) with: -->

<!-- ``` r -->
<!-- install.packages("covidham") -->
<!-- ``` -->

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("etc5523-2020/r-package-assessment-msobanq")
```
## Example

This is a basic example which shows you how to solve a common problem:

```{r example}
library(covidham)
library(tibble)
library(dplyr)

# the data set is huge so only a few variables are selected for a more appropriate vignette

# the whole data set can be accessed from using the covidham function covid_data or covidham::covid_data

covid_data %>% filter(continent == "Asia") %>% 
  select(location, 
         date, 
         total_cases, 
         stringency_index) %>% tibble()
```

You can use the stringency() function to call a plot from the app. 

```{r}
covidham::stringency()
```

Other functions you can use while using covidham package

```{r, eval=FALSE}

covidham::launch_app()

#to launch the inbuilt app 
```

## Landing page

Using the launch_app() function should take you to the following page. 

```{r, fig.align='center', fig.cap="The Landing Page of my Shiny App", echo=FALSE}
knitr::include_graphics("data/app launch page.PNG")

```


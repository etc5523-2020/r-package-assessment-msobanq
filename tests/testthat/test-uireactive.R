

library(shiny)


x <- tibble::as.tibble(c(1:5))
y <- tibble::as.tibble(c(6:7))


test_that("ui_check()", {
  expect_equal(
    shiny::varSelectInput("inputId", "label", x$value, "selected"),
    interact("inputId", "label", x$value , "selected")
  )

})

#test_that("ui_check()", { expect_equal(  varSelectInput("inputId", "label", y$value, "selected"),   interact("inputId", "label", x$value, "selected"))   })
  
  
  
  
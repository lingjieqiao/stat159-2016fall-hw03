# load the source code of the functions to be tested
source("../functions/regression-functions.R")

# context with one test that groups expectations
context("Test for residual standard error") 

test_that("residual standard error", {
  advertising <- read.csv("../data/Advertising.csv", header = TRUE)
  x <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)

  expect_equal(residual_std_error(x), 1.69)
  expect_length(residual_std_error(x), 1)
  expect_type(residual_std_error(x), 'double')
})

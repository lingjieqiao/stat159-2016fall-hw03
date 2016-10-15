# load the source code of the functions to be tested
source("../functions/regression-functions.R")

# context with one test that groups expectations
context("Test for residual sum of squares") 

test_that("residual sum of squares", {
  advertising <- read.csv("../../data/Advertising.csv", header = TRUE)
  x <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)

  expect_equal(residual_sum_squares(x), x$sigma)
  expect_length(residual_sum_squares(x), 1)
  expect_type(residual_sum_squares(x), 'double')
})

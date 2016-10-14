# load the source code of the functions to be tested
source("../functions/regression-functions.R")

# context with one test that groups expectations
context("Test for r squared") 

test_that("r squared", {
  advertising <- read.csv("../data/Advertising.csv", header = TRUE)
  x <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)

  expect_equal(r_squared(x), 0.897)
  expect_length(r_squared(x), 1)
  expect_type(r_squared(x), 'double')
})

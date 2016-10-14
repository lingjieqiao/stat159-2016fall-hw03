# load the source code of the functions to be tested
source("../functions/regression-functions.R")

# context with one test that groups expectations
context("Test for f statistics") 

test_that("F statistics", {
  advertising <- read.csv("../data/Advertising.csv", header = TRUE)
  x <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)

  expect_equal(f_statistic(x), 570)
  expect_length(f_statistic(x), 1)
})

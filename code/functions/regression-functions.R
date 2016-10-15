# Import data
advertising <- read.csv("data/Advertising.csv", header = TRUE)

# Fit multiple linear regression model
lm_model <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)

# Functions
# Residual Sum of Squares: this function takes in the lm object, and output Residual Sum of Squares
residual_sum_squares <- function(lm_model) {
    summary <- summary(lm_model)
    sum(summary$residuals^2)
}

# Total Sum of Squares: this function takes in the lm object, and output Total Sum of Squares
total_sum_squares <- function(lm_model) {
    rss <- residual_sum_squares(lm_model)
    summary <- summary(lm_model)
    rss / (1 - summary$r.squared)
}

# R Squared: this function takes in the lm object, and output R squared
r_squared <- function(lm_model) {
    rss <- residual_sum_squares(lm_model)
    tss <- total_sum_squares(lm_model)
    (tss - rss) / tss
}

# F statistics: this function takes in the lm object, and output F statistics
f_statistic <- function(lm_model) {
    rss <- residual_sum_squares(lm_model)
    tss <- total_sum_squares(lm_model)
    ((tss - rss) / 4) / (rss / 196)
}

# Residual Standard Error: this function takes in the lm object, and output Residual Standard Error
residual_std_error <- function(lm_model) {
    rss <- residual_sum_squares(lm_model)
    sqrt(rss / 4)
}
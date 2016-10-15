# Library calls to all packages
library(base)
library(car)
library(datasets)
library(graphics)
library(grDevices)
library(methods)
library(stats)
library(testthat)
library(utils)

# Save the output of sessionInfo
sink("../../session-info.txt")
print("Session Info")
sessionInfo(package = NULL)
sink()

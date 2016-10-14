
# Import Data
advertising <- read.csv("../../data/Advertising.csv", header = TRUE)
advertising <- advertising[,2:5]

# Compute Summary Statistics and histograms of TV, Radio, Newspaper, and Sales

# Summary Statistics of TV
sink("../../data/eda-output.txt")
print("Summary Statistics of TV")
summary(advertising$TV)
sink()

# Histogram of TV
png('../../images/histogram-tv.png')
hist(advertising$TV, main = "Histogram of TV", xlab = "TV data")
dev.off()


# Summary Statistics of Radio
sink("../../data/eda-output.txt", append = TRUE)
print("Summary Statistics of Radio")
summary(advertising$Radio)
sink()

# Histogram of Radio
png('../../images/histogram-radio.png')
hist(advertising$Radio, main = "Histogram of Radio", xlab = "Radio data")
dev.off()


# Summary Statistics of Newspaper
sink("../../data/eda-output.txt", append = TRUE)
print("Summary Statistics of Newspaper")
summary(advertising$Newspaper)
sink()

# Histogram of Radio
png('../../images/histogram-newspaper.png')
hist(advertising$Newspaper, main = "Histogram of Newspaper", xlab = "Newspaper data")
dev.off()


# Summary Statistics of Sales
sink("../../data/eda-output.txt", append=TRUE)
print("Summary Statistics of Sales")
summary(advertising$Sales)
sink()

# Histogram of Sales
png('../../images/histogram-sales.png')
hist(advertising$Sales, main = "Histogram of Sales", xlab = "Sales data")
dev.off()

# Create pairwise scatterplots
# Scatterplot Matrix
png('../../images/scatterplot-matrix.png')
scatterplotMatrix(advertising)
dev.off()

# Scatterplot between tv and sales
png('../../images/scatterplot-tv-sales.png')
plot(advertising$TV, advertising$Sales, main = "Scatterplot between TV and Sales", xlab = "TV", ylab = "Sales")
dev.off()

# Scatterplot between radio and sales
png('../../images/scatterplot-radio-sales.png')
plot(advertising$Radio, advertising$Sales, main = "Scatterplot between Radio and Sales", xlab = "Radio", ylab = "Sales")
dev.off()

# Scatterplot between tv and sales
png('../../images/scatterplot-newspaper-sales.png')
plot(advertising$Newspaper, advertising$Sales, main = "Scatterplot between Newspaper and Sales", xlab = "Newspaper", ylab = "Sales")
dev.off()

# Matrix of Correlations
sink("../../data/eda-output.txt", append = TRUE)
print("Matrix of correlations among all variables")
cor(advertising)
sink()

# Save the correlation matrix into binary format
cor_m <- cor(advertising)
save(cor_m, file = "../../data/correlation-matrix.RData")

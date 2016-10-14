# Declare the variables
D = data
C = code
S = code/scripts
R = report

# Declare PHONY targets
.PHONY: all data tests eda regression report clean

all: eda regression report

data: 
	curl -0 http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > $(D)/Advertising.csv

tests: $(C)/test-that.R
	Rscript $(C)/test-that.R

eda: $(S)/eda-script.R
	Rscript $(S)/eda-script.R

regression: $(S)/regression-script.R
	Rscript $(S)/regression-script.R

report: $(R)/report.R
	Rscript $(R)report.R

clean: 
	rm -f $(R)/report.pdf
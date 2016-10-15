# Declare the variables
D = data
C = code
S = code/scripts
R = report

# Declare PHONY targets
.PHONY: all data tests eda regression report clean

all: eda regression report

data: 
	curl -o $(D)/Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

tests: $(C)/test-that.R
	Rscript $(C)/test-that.R

eda: $(S)/eda-script.R
	Rscript $(S)/eda-script.R

regression: $(S)/regression-script.R
	Rscript $(S)/regression-script.R

report: $(R)/report.Rmd
	cd $(R); Rscript -e 'library(rmarkdown); render("report.Rmd")'

clean: 
	rm -f $(R)/report.pdf
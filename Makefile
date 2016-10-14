# Declare the variables


# Declare PHONY targets
.PHONY: all data clean

all: report/report.pdf

clean: 
	rm -f report/report.pdf
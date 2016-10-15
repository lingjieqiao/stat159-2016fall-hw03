# stat159-fall2016-hw3


### MULTIPLE REGRESSION ANALYSIS

This repository holds the information of Course Stats 159 at UC Berkeley, fall 2016 - third homework report. This report aims to reproduce the main results displayed in **section 3.2: Multiple Linear Regression** of the book **_An Introduction to Statistical Learning_** and perform multiple linear regression analysis on the data set `Advertising`.

Course website: [gastonsanchez.com/stat159](http://gastonsanchez.com/stat159)

Project instruction: [github project repository](https://github.com/ucb-stat159/stat159-fall-2016/blob/master/hws/hw03/stat159-hw03-multiple-regression.Rmd)

The main analysis involves carrying out a multiple linear regression with predictor variables `TV`, `Radio`, `Newspaper`, and the response variable `Sales`. With the reproducing process of the book chapter, we take a careful look at multiple linear regression statistics and related concepts by producing graphics, charts, and tables to analyze the relationship.

The complete file-structure of this repository is the following:

```
stat159-fall2016-hw03/
	.gitignore
	README.md
	LICENSE
	Makefile
	session-info.txt                     # produced by session-info-script.R
	code/
	  README.md
	  test-that.R
	  functions/
	    regression-functions.R
	  scripts/
	    eda-script.R
	    regression-script.R
	    session-info-script.R
	  tests/
	    test-regression.R
	data/
	  README.md
	  Advertising.csv
	  eda-output.txt                      # produced by eda-script.R
	  correlation-matrix.RData            # produced by eda-script.R
	  regression.RData                    # produced by regression-script.R
	images/
		histogram-sales.png                # produced by eda-script.R
		histogram-tv.png                   # produced by eda-script.R
		histogram-radio.png                # produced by eda-script.R
		histogram-newspaper.png            # produced by eda-script.R
		scatterplot-matrix.png             # produced by eda-script.R
		scatterplot-tv-sales.png           # produced by regression-script.R
		scatterplot-radio-sales.png        # produced by regression-script.R
		scatterplot-newspaper-sales.png    # produced by regression-script.R
		residual-plot.png                  # produced by regression-script.R
		scale-location-plot.png            # produced by regression-script.R
		normal-qq-plot.png                 # produced by regression-script.R
	report/
		report.Rmd
		report.pdf
```

The most useful piece of this assignment is the **report.pdf**, which you can locate under folder `report/`. You can easily reproduce the report through Makefile, which is lcoated in the main directory stat159-fall2016-hw03. 

> Type 'make' in your terminal to automatically generate the report.pdf.
> Type 'make clean' to automatically remove the report.

This paper consists of six sections:
* Abstract
* Introduction
* Data
* Methodology
* Results
* Conclusions
where each section specifically lays out how the thought process flows. To conclude, the results we generated in report.pdf matches the original findings in the book and therefore fulfills the purpose of reproducibility.


### LICENSE

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

Author: **Lingjie Qiao**

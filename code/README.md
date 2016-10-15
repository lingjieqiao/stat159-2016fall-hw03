# stat159-fall2016-hw3


### Code

This directory holds the code used to create the reproducible report. The dedicated folder `code/` has three subdirectories: `functions/ `, `scripts/` and `tests/`.
* functions: hold the regression functions used to apply the multiple linear regression model and produce the summary statistics. These statistics include:
  * Residual Sum of Squares
  * Total Sum of Squares
  * R squared
  * F statistics
  * Residual Standard Error
* scripts: hold code scripts to plot histograms and scatterplots and session information. There are three files:
  * eda-script.R: reads in the Advertising.csv data set, and computes summary statistics, histograms for all the variables (TV, Radio, Newspaper, and Sales), matrix of correlations among all variables, and scatterplot-matrix (pairwise scatterplots). 
  * regression-script.R: reads in the Advertising.csv data set, and computes a "regression" object---via lm()---as well as the summary of such regression object---via summary().
  * session-info-script.R: is a script that includes library() calls to ALL the packages that you use for your project, as well as the output of the function sessionInfo().
* tests: hold all the related unit tests on functions to compare expected and actual output

The file-structure for this directory is the following:

```
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
```

### LICENSE

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

Author: **Lingjie Qiao**
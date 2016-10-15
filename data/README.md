# stat159-fall2016-hw3


### Data

This directory holds the data used to create the reproducible report. The dedicated folder `data/` contains four files:
* Advertising.csv: a csv dataset downloaded from online source
* eda-output.txt: a text file containing the summary statistics of all the variables, and the correlation matrix. This file was produced via sink() from the eda-script.R file
* regression.RData: an R's binary format file containing the regression objects obtained when running regression-script.R
* correlation-matrix.RData: an R's binary format file containing the matrix of correlations among all variables. This file was produced via save() from the eda-script.R file

Data Source: [An Introduction to Statistical Learning](http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv)

Credit to: Gareth James, Daniela Witten, Trevor Hastie and Robert Tibshirani

The file-structure for this directory is the following:

```
data/
  README.md
  Advertising.csv
  eda-output.txt
  regression.RData
  correlation-matrix.RData
```

### LICENSE

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

Author: **Lingjie Qiao**
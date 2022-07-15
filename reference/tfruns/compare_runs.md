# compare_runs


Compare training runs




## Description

Render a visual comparison of two training runs. The runs are
displayed with the most recent run on the right and the
earlier run on the left.





## Usage
```r
compare_runs(runs = ls_runs(latest_n = 2), viewer = getOption("tfruns.viewer"))
```




## Arguments


Argument      |Description
------------- |----------------
runs | Character vector of 2 training run directories or data frame returned from `ls_runs()` with at least 2 elements.
viewer | Viewer to display training run information within (default to an internal page viewer if available, otherwise to the R session default web browser).







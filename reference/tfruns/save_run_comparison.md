# save_run_comparison


Save a run comparison as HTML




## Description

Save a run comparison as HTML





## Usage
```r
save_run_comparison(runs = ls_runs(latest_n = 2), filename = "auto")
```




## Arguments


Argument      |Description
------------- |----------------
runs | Character vector of 2 training run directories or data frame returned from `ls_runs()` with at least 2 elements.
filename | Path to save the HTML to. If no ``filename`` is specified then a temporary file is used (the path to the file is returned invisibly).







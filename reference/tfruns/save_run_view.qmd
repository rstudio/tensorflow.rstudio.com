# save_run_view


Save a run view as HTML




## Description

The saved view includes summary information (flags, metrics, model
attributes, etc.), plot and console output, and the code used for the run.





## Usage
```r
save_run_view(run_dir = latest_run(), filename = "auto")
```




## Arguments


Argument      |Description
------------- |----------------
run_dir | Training run directory or data frame returned from `ls_runs()`.
filename | Path to save the HTML to. If no ``filename`` is specified then a temporary file is used (the path to the file is returned invisibly).







## See Also

`ls_runs()`, `run_info()`, `view_run()`




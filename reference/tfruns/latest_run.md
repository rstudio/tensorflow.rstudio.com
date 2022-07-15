# latest_run


Latest training run




## Description

Latest training run





## Usage
```r
latest_run(runs_dir = getOption("tfruns.runs_dir", "runs"))
```




## Arguments


Argument      |Description
------------- |----------------
runs_dir | Directory containing runs. Defaults to "runs" beneath the current working directory (or to the value of the ``tfruns.runs_dir`` R option if specified).





## Value

Named list with run attributes (or ``NULL`` if no runs found)






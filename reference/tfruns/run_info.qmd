# run_info


Summary of training run




## Description

Summary of training run





## Usage
```r
run_info(run_dir)
```




## Arguments


Argument      |Description
------------- |----------------
run_dir | Training run directory or data frame returned from `ls_runs()`.





## Value

Training run summary object with timing, flags, model info, training
and evaluation metrics, etc. If more than one ``run_dir`` is passed then
a list of training run summary objects is returned.






## See Also

`view_run()`




# view_run_metrics


View metrics for a training run




## Description

Interactive D3 visualization of metrics for a training run. Metrics will
be displayed in the RStudio Viewer (if available), otherwise will be
displayed in an external web browser.





## Usage
```r
view_run_metrics(metrics)

update_run_metrics(viewer, metrics)
```




## Arguments


Argument      |Description
------------- |----------------
metrics | Data frame containing run metrics
viewer | Viewer object returned from ``view_run_metrics()``.







# write_run_data


Write run data (deprecated)




## Description

Deprecated alias for `write_run_metadata()`.





## Usage
```r
write_run_data(type, data)
```




## Arguments


Argument      |Description
------------- |----------------
type | Type of metadata to write. Standard types include "flags", "sources", "properties", "metrics", and "evaluation". You can also specify a custom type (see Custom Types section below).
data | Metadata to write:   *  "flags" --- Named list of training flags  *  "source" --- Directory to copy source files from  *  "properties" --- Named list of arbitrary properties. Note that properties will be stored as strings.  *  "metrics" --- Data frame with training run metrics (see Metrics Data Frame below).  *  "evaluation" --- Named list of evaluation metrics.  *  "error" --- Named list with 'message' and 'traceback'  *  "<custom>" -- Function used to write the data (see Custom Types section below).







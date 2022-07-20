# text_line_dataset


A dataset comprising lines from one or more text files.




## Description

A dataset comprising lines from one or more text files.





## Usage
```r
text_line_dataset(
  filenames,
  compression_type = NULL,
  record_spec = NULL,
  parallel_records = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
filenames | String(s) specifying one or more filenames
compression_type | A string, one of: ``NULL`` (no compression), ``"ZLIB"``, or ``"GZIP"``.
record_spec | (Optional) Specification used to decode delimimted text lines into records (see `delim_record_spec()`).
parallel_records | (Optional) An integer, representing the number of records to decode in parallel. If not specified, records will be processed sequentially.





## Value

A dataset






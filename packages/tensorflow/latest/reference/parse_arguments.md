# parse_arguments


Parse Command Line Arguments




## Description

Parse command line arguments of the form ``--key=value`` and
--key value. The values are assumed to be valid ``yaml`` and
will be converted using `yaml.load()`.





## Usage
```r
parse_arguments(arguments = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
arguments | A vector of command line arguments. When ``NULL`` (the default), the command line arguments received by the current  process are used.







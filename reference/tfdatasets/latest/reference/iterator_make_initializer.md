# iterator_make_initializer


Create an operation that can be run to initialize this iterator




## Description

Create an operation that can be run to initialize this iterator





## Usage
```r
iterator_make_initializer(iterator, dataset, name = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
iterator | An iterator
dataset | A dataset
name | (Optional) A name for the created operation.





## Value

A tf$Operation that can be run to initialize this iterator on the
given dataset.






## See Also

Other iterator functions: 
`iterator_get_next()`,
`iterator_initializer()`,
`iterator_string_handle()`,
`make-iterator`




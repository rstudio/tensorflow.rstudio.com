# k_arange


Creates a 1D tensor containing a sequence of integers.




## Description

The function arguments use the same convention as Theano's arange: if only
one argument is provided, it is in fact the "stop" argument. The default
type of the returned tensor is ``'int32'`` to match TensorFlow's default.





## Usage
```r
k_arange(start, stop = NULL, step = 1, dtype = "int32")
```




## Arguments


Argument      |Description
------------- |----------------
start | Start value.
stop | Stop value.
step | Difference between two successive values.
dtype | Integer dtype to use.





## Value

An integer tensor.






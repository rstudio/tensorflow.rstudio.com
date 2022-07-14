# k_pool2d


2D Pooling.




## Description

2D Pooling.





## Usage
```r
k_pool2d(
  x,
  pool_size,
  strides = c(1, 1),
  padding = "valid",
  data_format = NULL,
  pool_mode = "max"
)
```




## Arguments


Argument      |Description
------------- |----------------
x | Tensor or variable.
pool_size | list of 2 integers.
strides | list of 2 integers.
padding | string, ``"same"`` or ``"valid"``.
data_format | string, ``"channels_last"`` or ``"channels_first"``.
pool_mode | string, ``"max"`` or ``"avg"``.





## Value

A tensor, result of 2D pooling.






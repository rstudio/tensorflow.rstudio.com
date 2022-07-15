# k_pool3d


3D Pooling.




## Description

3D Pooling.





## Usage
```r
k_pool3d(
  x,
  pool_size,
  strides = c(1, 1, 1),
  padding = "valid",
  data_format = NULL,
  pool_mode = "max"
)
```




## Arguments


Argument      |Description
------------- |----------------
x | Tensor or variable.
pool_size | list of 3 integers.
strides | list of 3 integers.
padding | string, ``"same"`` or ``"valid"``.
data_format | string, ``"channels_last"`` or ``"channels_first"``.
pool_mode | string, ``"max"`` or ``"avg"``.





## Value

A tensor, result of 3D pooling.






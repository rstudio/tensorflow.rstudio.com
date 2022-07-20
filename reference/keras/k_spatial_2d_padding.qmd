# k_spatial_2d_padding


Pads the 2nd and 3rd dimensions of a 4D tensor.




## Description

Pads the 2nd and 3rd dimensions of a 4D tensor.





## Usage
```r
k_spatial_2d_padding(
  x,
  padding = list(list(1, 1), list(1, 1)),
  data_format = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
x | Tensor or variable.
padding | Tuple of 2 lists, padding pattern.
data_format | string, ``"channels_last"`` or ``"channels_first"``.





## Value

A padded 4D tensor.






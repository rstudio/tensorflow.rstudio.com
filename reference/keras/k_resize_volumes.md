# k_resize_volumes


Resizes the volume contained in a 5D tensor.




## Description

Resizes the volume contained in a 5D tensor.





## Usage
```r
k_resize_volumes(x, depth_factor, height_factor, width_factor, data_format)
```




## Arguments


Argument      |Description
------------- |----------------
x | Tensor or variable to resize.
depth_factor | Positive integer.
height_factor | Positive integer.
width_factor | Positive integer.
data_format | string, ``"channels_last"`` or ``"channels_first"``.





## Value

A tensor.






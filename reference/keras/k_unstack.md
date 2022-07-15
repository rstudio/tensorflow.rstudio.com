# k_unstack


Unstack rank ``R`` tensor into a list of rank ``R-1`` tensors.




## Description

Unstack rank ``R`` tensor into a list of rank ``R-1`` tensors.





## Usage
```r
k_unstack(x, axis = 1L, num = NULL, name = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
x | a tensor.
axis | Axis along which to perform stacking (axis indexes are 1-based). Negative values wrap around, so the valid range is [R, -R].
num | An int. The length of the dimension axis. Automatically inferred if NULL (the default).
name | A name for the operation (optional).





## Value

A tensor.






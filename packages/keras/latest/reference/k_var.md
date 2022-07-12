# k_var


Variance of a tensor, alongside the specified axis.




## Description

Variance of a tensor, alongside the specified axis.





## Usage
```r
k_var(x, axis = NULL, keepdims = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
x | A tensor or variable.
axis | An integer, the axis to compute the variance over (axis indexes are 1-based).
keepdims | A boolean, whether to keep the dimensions or not. If ``keepdims`` is ``FALSE``, the rank of the tensor is reduced by 1. If ``keepdims`` is ``TRUE``, the reduced dimension is retained with length 1.





## Value

A tensor with the variance of elements of ``x``.






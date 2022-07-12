# k_std


Standard deviation of a tensor, alongside the specified axis.




## Description

Standard deviation of a tensor, alongside the specified axis.





## Usage
```r
k_std(x, axis = NULL, keepdims = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
x | A tensor or variable.
axis | An integer, the axis to compute the standard deviation over (axis indexes are 1-based).
keepdims | A boolean, whether to keep the dimensions or not. If ``keepdims`` is ``FALSE``, the rank of the tensor is reduced by 1. If ``keepdims`` is ``TRUE``, the reduced dimension is retained with length 1.





## Value

A tensor with the standard deviation of elements of ``x``.






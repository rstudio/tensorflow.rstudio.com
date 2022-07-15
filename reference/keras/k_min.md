# k_min


Minimum value in a tensor.




## Description

Minimum value in a tensor.





## Usage
```r
k_min(x, axis = NULL, keepdims = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
x | A tensor or variable.
axis | An integer, axis to find minimum values (axis indexes are 1-based).
keepdims | A boolean, whether to keep the dimensions or not. If ``keepdims`` is ``FALSE``, the rank of the tensor is reduced by 1. If ``keepdims`` is ``TRUE``, the reduced dimension is retained with length 1.





## Value

A tensor with miminum values of ``x``.






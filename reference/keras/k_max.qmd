# k_max


Maximum value in a tensor.




## Description

Maximum value in a tensor.





## Usage
```r
k_max(x, axis = NULL, keepdims = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
x | A tensor or variable.
axis | An integer, the axis to find maximum values (axis indexes are 1-based).
keepdims | A boolean, whether to keep the dimensions or not. If ``keepdims`` is ``FALSE``, the rank of the tensor is reduced by 1. If ``keepdims`` is ``TRUE``, the reduced dimension is retained with length 1.





## Value

A tensor with maximum values of ``x``.






# k_mean


Mean of a tensor, alongside the specified axis.




## Description

Mean of a tensor, alongside the specified axis.





## Usage
```r
k_mean(x, axis = NULL, keepdims = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
x | A tensor or variable.
axis | A list of axes to compute the mean over (axis indexes are 1-based).
keepdims | A boolean, whether to keep the dimensions or not. If ``keepdims`` is ``FALSE``, the rank of the tensor is reduced by 1 for each entry in ``axis``. If ``keep_dims`` is ``TRUE``, the reduced dimensions are retained with length 1.





## Value

A tensor with the mean of elements of ``x``.






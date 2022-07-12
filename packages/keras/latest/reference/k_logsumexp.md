# k_logsumexp


(Deprecated) Computes log(sum(exp(elements across dimensions of a tensor))).




## Description

This funciton is deprecated. Please use ``tensorflow::tf$reduce_logsumexp()``.





## Usage
```r
k_logsumexp(x, axis = NULL, keepdims = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
x | A tensor or variable.
axis | An integer, the axis to reduce over (axis indexes are 1-based).
keepdims | A boolean, whether to keep the dimensions or not. If ``keepdims`` is ``FALSE``, the rank of the tensor is reduced by 1. If ``keepdims`` is ``TRUE``, the reduced dimension is retained with length 1.




## Details

This function is more numerically stable than log(sum(exp(x))). It avoids
overflows caused by taking the exp of large inputs and underflows caused by
taking the log of small inputs.





## Value

The reduced tensor.






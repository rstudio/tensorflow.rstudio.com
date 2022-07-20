# k_batch_dot


Batchwise dot product.




## Description

``batch_dot`` is used to compute dot product of ``x`` and ``y`` when ``x`` and ``y``
are data in batch, i.e. in a shape of ``(batch_size)``. ``batch_dot`` results in
a tensor or variable with less dimensions than the input. If the number of
dimensions is reduced to 1, we use ``expand_dims`` to make sure that ndim is
at least 2.





## Usage
```r
k_batch_dot(x, y, axes)
```




## Arguments


Argument      |Description
------------- |----------------
x | Keras tensor or variable with 2 more more axes.
y | Keras tensor or variable with 2 or more axes
axes | List of (or single) integer with target dimensions (axis indexes are 1-based). The lengths of ``axes[[1]]`` and ``axes[[2]]`` should be the same.





## Value

A tensor with shape equal to the concatenation of ``x``'s shape (less
the dimension that was summed over) and ``y``'s shape (less the batch
dimension and the dimension that was summed over). If the final rank is 1,
we reshape it to (batch_size, 1).






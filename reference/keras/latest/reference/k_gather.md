# k_gather


Retrieves the elements of indices ``indices`` in the tensor ``reference``.




## Description

Retrieves the elements of indices ``indices`` in the tensor ``reference``.





## Usage
```r
k_gather(reference, indices)
```




## Arguments


Argument      |Description
------------- |----------------
reference | A tensor.
indices | Indices. Dimension indices are 1-based. Note however that if you pass a tensor for ``indices`` they will be passed as-is, in which case indices will be 0 based because no normalizing of R 1-based axes to Python 0-based axes is performed.





## Value

A tensor of same type as ``reference``.






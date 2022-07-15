# k_foldl


Reduce elems using fn to combine them from left to right.




## Description

Reduce elems using fn to combine them from left to right.





## Usage
```r
k_foldl(fn, elems, initializer = NULL, name = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
fn | Function that will be called upon each element in elems and an accumulator
elems | tensor
initializer | The first value used (first element of ``elems`` in case of `NULL``)
name | A string name for the foldl node in the graph





## Value

Tensor with same type and shape as ``initializer``.






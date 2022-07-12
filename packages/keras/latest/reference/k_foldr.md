# k_foldr


Reduce elems using fn to combine them from right to left.




## Description

Reduce elems using fn to combine them from right to left.





## Usage
```r
k_foldr(fn, elems, initializer = NULL, name = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
fn | Function that will be called upon each element in elems and an accumulator
elems | tensor
initializer | The first value used (last element of ``elems`` in case of NULL)
name | A string name for the foldr node in the graph





## Value

Tensor with same type and shape as ``initializer``.






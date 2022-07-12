# k_map_fn


Map the function fn over the elements elems and return the outputs.




## Description

Map the function fn over the elements elems and return the outputs.





## Usage
```r
k_map_fn(fn, elems, name = NULL, dtype = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
fn | Function that will be called upon each element in elems
elems | tensor
name | A string name for the map node in the graph
dtype | Output data type.





## Value

Tensor with dtype ``dtype``.






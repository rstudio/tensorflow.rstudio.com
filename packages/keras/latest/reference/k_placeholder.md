# k_placeholder


Instantiates a placeholder tensor and returns it.




## Description

Instantiates a placeholder tensor and returns it.





## Usage
```r
k_placeholder(
  shape = NULL,
  ndim = NULL,
  dtype = NULL,
  sparse = FALSE,
  name = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
shape | Shape of the placeholder (integer list, may include ``NULL`` entries).
ndim | Number of axes of the tensor. At least one of `shape`, `ndim` must be specified. If both are specified, ``shape`` is used.
dtype | Placeholder type.
sparse | Logical, whether the placeholder should have a sparse type.
name | Optional name string for the placeholder.





## Value

Tensor instance (with Keras metadata included).






# all_dims


All dims




## Description

This function returns an object that can be used when subsetting tensors with
``[``. If you are familiar with python,, this is equivalent to the python Ellipsis
``...``, (not to be confused with ``...`` in ``R``).





## Usage
```r
all_dims()
```






## Examples

```r

# in python, if x is a numpy array or tensorflow tensor
x[..., i]
# the ellipsis means "expand to match number of dimension of x".
# to translate the above python expression to R, write:
x[all_dims(), i]

```





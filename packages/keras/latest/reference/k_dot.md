# k_dot


Multiplies 2 tensors (and/or variables) and returns a tensor.




## Description

When attempting to multiply a nD tensor
with a nD tensor, it reproduces the Theano behavior.
(e.g. (2, 3) * (4, 3, 5) -> (2, 4, 5))





## Usage
```r
k_dot(x, y)
```




## Arguments


Argument      |Description
------------- |----------------
x | Tensor or variable.
y | Tensor or variable.





## Value

A tensor, dot product of ``x`` and ``y``.






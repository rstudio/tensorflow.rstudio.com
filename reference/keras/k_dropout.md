# k_dropout


Sets entries in ``x`` to zero at random, while scaling the entire tensor.




## Description

Sets entries in ``x`` to zero at random, while scaling the entire tensor.





## Usage
```r
k_dropout(x, level, noise_shape = NULL, seed = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
x | tensor
level | fraction of the entries in the tensor that will be set to 0.
noise_shape | shape for randomly generated keep/drop flags, must be broadcastable to the shape of ``x``
seed | random seed to ensure determinism.





## Value

A tensor.






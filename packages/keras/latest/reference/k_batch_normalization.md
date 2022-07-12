# k_batch_normalization


Applies batch normalization on x given mean, var, beta and gamma.




## Description

i.e. returns
``output <- (x - mean) / (sqrt(var) + epsilon) * gamma + beta``





## Usage
```r
k_batch_normalization(x, mean, var, beta, gamma, axis = -1, epsilon = 0.001)
```




## Arguments


Argument      |Description
------------- |----------------
x | Input tensor or variable.
mean | Mean of batch.
var | Variance of batch.
beta | Tensor with which to center the input.
gamma | Tensor by which to scale the input.
axis | Axis (axis indexes are 1-based). Pass -1 (the default) to select the last axis.
epsilon | Fuzz factor.





## Value

A tensor.






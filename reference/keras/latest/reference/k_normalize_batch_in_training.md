# k_normalize_batch_in_training


Computes mean and std for batch then apply batch_normalization on batch.




## Description

Computes mean and std for batch then apply batch_normalization on batch.





## Usage
```r
k_normalize_batch_in_training(x, gamma, beta, reduction_axes, epsilon = 0.001)
```




## Arguments


Argument      |Description
------------- |----------------
x | Input tensor or variable.
gamma | Tensor by which to scale the input.
beta | Tensor with which to center the input.
reduction_axes | iterable of integers, axes over which to normalize.
epsilon | Fuzz factor.





## Value

A list length of 3, (normalized_tensor, mean, variance).






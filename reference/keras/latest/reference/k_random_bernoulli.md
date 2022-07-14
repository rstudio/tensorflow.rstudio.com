# k_random_binomial


Returns a tensor with random binomial distribution of values.




## Description

``k_random_binomial()`` and ``k_random_bernoulli()`` are aliases for the same
function. Both are maintained for backwards compatibility. New code
should prefer ``k_random_bernoulli()``.





## Usage
```r
k_random_binomial(shape, p = 0, dtype = NULL, seed = NULL)

k_random_bernoulli(shape, p = 0, dtype = NULL, seed = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
shape | A list of integers, the shape of tensor to create.
p | A float, 0. <= p <= 1, probability of binomial distribution.
dtype | String, dtype of returned tensor.
seed | Integer, random seed.





## Value

A tensor.






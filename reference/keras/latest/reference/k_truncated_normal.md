# k_truncated_normal


Returns a tensor with truncated random normal distribution of values.




## Description

The generated values follow a normal distribution
with specified mean and standard deviation,
except that values whose magnitude is more than
two standard deviations from the mean are dropped and re-picked.





## Usage
```r
k_truncated_normal(shape, mean = 0, stddev = 1, dtype = NULL, seed = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
shape | A list of integers, the shape of tensor to create.
mean | Mean of the values.
stddev | Standard deviation of the values.
dtype | String, dtype of returned tensor.
seed | Integer, random seed.





## Value

A tensor.






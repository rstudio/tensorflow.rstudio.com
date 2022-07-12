# k_random_normal_variable


Instantiates a variable with values drawn from a normal distribution.




## Description

Instantiates a variable with values drawn from a normal distribution.





## Usage
```r
k_random_normal_variable(
  shape,
  mean,
  scale,
  dtype = NULL,
  name = NULL,
  seed = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
shape | Tuple of integers, shape of returned Keras variable.
mean | Float, mean of the normal distribution.
scale | Float, standard deviation of the normal distribution.
dtype | String, dtype of returned Keras variable.
name | String, name of returned Keras variable.
seed | Integer, random seed.





## Value

A Keras variable, filled with drawn samples.






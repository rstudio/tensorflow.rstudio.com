# k_random_uniform_variable


Instantiates a variable with values drawn from a uniform distribution.




## Description

Instantiates a variable with values drawn from a uniform distribution.





## Usage
```r
k_random_uniform_variable(
  shape,
  low,
  high,
  dtype = NULL,
  name = NULL,
  seed = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
shape | Tuple of integers, shape of returned Keras variable.
low | Float, lower boundary of the output interval.
high | Float, upper boundary of the output interval.
dtype | String, dtype of returned Keras variable.
name | String, name of returned Keras variable.
seed | Integer, random seed.





## Value

A Keras variable, filled with drawn samples.






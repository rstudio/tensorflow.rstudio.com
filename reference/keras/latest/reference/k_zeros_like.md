# k_zeros_like


Instantiates an all-zeros variable of the same shape as another tensor.




## Description

Instantiates an all-zeros variable of the same shape as another tensor.





## Usage
```r
k_zeros_like(x, dtype = NULL, name = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
x | Keras variable or Keras tensor.
dtype | String, dtype of returned Keras variable. NULL uses the dtype of x.
name | String, name for the variable to create.





## Value

A Keras variable with the shape of x filled with zeros.






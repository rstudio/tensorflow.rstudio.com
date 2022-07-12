# k_variable


Instantiates a variable and returns it.




## Description

Instantiates a variable and returns it.





## Usage
```r
k_variable(value, dtype = NULL, name = NULL, constraint = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
value | Numpy array, initial value of the tensor.
dtype | Tensor type.
name | Optional name string for the tensor.
constraint | Optional projection function to be applied to the variable after an optimizer update.





## Value

A variable instance (with Keras metadata included).






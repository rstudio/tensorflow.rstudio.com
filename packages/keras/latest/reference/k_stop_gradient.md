# k_stop_gradient


Returns ``variables`` but with zero gradient w.r.t. every other variable.




## Description

Returns ``variables`` but with zero gradient w.r.t. every other variable.





## Usage
```r
k_stop_gradient(variables)
```




## Arguments


Argument      |Description
------------- |----------------
variables | tensor or list of tensors to consider constant with respect to any other variable.





## Value

A single tensor or a list of tensors (depending on the passed
argument) that has constant gradient with respect to any other variable.






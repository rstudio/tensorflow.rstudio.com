# k_relu


Rectified linear unit.




## Description

With default values, it returns element-wise ``max(x, 0)``.





## Usage
```r
k_relu(x, alpha = 0, max_value = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
x | A tensor or variable.
alpha | A scalar, slope of negative section (default=``0.``).
max_value | Saturation threshold.





## Value

A tensor.






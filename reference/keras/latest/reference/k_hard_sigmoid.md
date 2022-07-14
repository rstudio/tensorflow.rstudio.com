# k_hard_sigmoid


Segment-wise linear approximation of sigmoid.




## Description

Faster than sigmoid.
Returns ``0.`` if ``x < -2.5``, ``1.`` if ``x > 2.5``.
In -2.5 <= x <= 2.5, returns ``0.2 * x + 0.5``.





## Usage
```r
k_hard_sigmoid(x)
```




## Arguments


Argument      |Description
------------- |----------------
x | A tensor or variable.





## Value

A tensor.






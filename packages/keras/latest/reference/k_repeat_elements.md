# k_repeat_elements


Repeats the elements of a tensor along an axis.




## Description

If ``x`` has shape (s1, s2, s3) and ``axis`` is ``2``, the output
will have shape (s1, s2 * rep, s3).





## Usage
```r
k_repeat_elements(x, rep, axis)
```




## Arguments


Argument      |Description
------------- |----------------
x | Tensor or variable.
rep | Integer, number of times to repeat.
axis | Axis along which to repeat (axis indexes are 1-based)





## Value

A tensor.






# backend


Keras backend tensor engine




## Description

Obtain a reference to the ``keras.backend`` Python module used to implement
tensor operations.





## Usage
```r
backend(convert = TRUE)
```




## Arguments


Argument      |Description
------------- |----------------
convert | Boolean; should Python objects be automatically converted to their  equivalent? If set to ``FALSE``, you can still manually convert Python objects to  via the `py_to_r()` function.





## Value

Reference to Keras backend python module.






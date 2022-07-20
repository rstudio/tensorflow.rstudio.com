# k_in_top_k


Returns whether the ``targets`` are in the top ``k`` ``predictions``.




## Description

Returns whether the ``targets`` are in the top ``k`` ``predictions``.





## Usage
```r
k_in_top_k(predictions, targets, k)
```




## Arguments


Argument      |Description
------------- |----------------
predictions | A tensor of shape (batch_size, classes) and type ``float32``.
targets | A 1D tensor of length ``batch_size`` and type ``int32`` or ``int64``.
k | An ``int``, number of top elements to consider.





## Value

A 1D tensor of length ``batch_size`` and type ``bool``. ``output[[i]]`` is
``TRUE`` if predictions[i, targets[[i]] is within top-``k`` values of
``predictions[[i]]``.






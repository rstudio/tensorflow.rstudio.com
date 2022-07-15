# layer_concatenate


Layer that concatenates a list of inputs.




## Description

It takes as input a list of tensors, all of the same shape expect for the
concatenation axis, and returns a single tensor, the concatenation of all
inputs.





## Usage
```r
layer_concatenate(inputs, axis = -1, ...)
```




## Arguments


Argument      |Description
------------- |----------------
inputs | A list of input tensors (at least 2). Can be missing.
axis | Concatenation axis.
... | Standard layer arguments (must be named).





## Value

A tensor, the concatenation of the inputs alongside axis ``axis``. If
``inputs`` is missing, a keras layer instance is returned.






## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/concatenate

*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/Concatenate

*  https://keras.io/api/layers/merging_layers/concatenate


Other merge layers: 
`layer_average()`,
`layer_dot()`,
`layer_maximum()`,
`layer_minimum()`,
`layer_multiply()`,
`layer_subtract()`




# layer_minimum


Layer that computes the minimum (element-wise) a list of inputs.




## Description

It takes as input a list of tensors, all of the same shape, and returns a
single tensor (also of the same shape).





## Usage
```r
layer_minimum(inputs, ...)
```




## Arguments


Argument      |Description
------------- |----------------
inputs | A list of input tensors (at least 2). Can be missing.
... | Standard layer arguments (must be named).





## Value

A tensor, the element-wise maximum of the inputs. If ``inputs`` is
missing, a keras layer instance is returned.






## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/minimum

*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/Minimum

*  https://keras.io/api/layers/merging_layers/minimum


Other merge layers: 
`layer_average()`,
`layer_concatenate()`,
`layer_dot()`,
`layer_maximum()`,
`layer_multiply()`,
`layer_subtract()`




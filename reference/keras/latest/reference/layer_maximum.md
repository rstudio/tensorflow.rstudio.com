# layer_maximum


Layer that computes the maximum (element-wise) a list of inputs.




## Description

It takes as input a list of tensors, all of the same shape, and returns a
single tensor (also of the same shape).





## Usage
```r
layer_maximum(inputs, ...)
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



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/maximum

*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/Maximum

*  https://keras.io/api/layers/merging_layers/maximum


Other merge layers: 
`layer_average()`,
`layer_concatenate()`,
`layer_dot()`,
`layer_minimum()`,
`layer_multiply()`,
`layer_subtract()`




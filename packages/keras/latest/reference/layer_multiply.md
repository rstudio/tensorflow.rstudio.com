# layer_multiply


Layer that multiplies (element-wise) a list of inputs.




## Description

It takes as input a list of tensors, all of the same shape, and returns a
single tensor (also of the same shape).





## Usage
```r
layer_multiply(inputs, ...)
```




## Arguments


Argument      |Description
------------- |----------------
inputs | A input tensor, or list of input tensors. Can be missing.
... | Unnamed args are treated as additional ``inputs``. Named arguments are passed on as standard layer arguments.





## Value

A tensor, the element-wise product of the inputs. If ``inputs`` is
missing, a keras layer instance is returned.






## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/multiply

*  https://keras.io/api/layers/merging_layers/multiply


Other merge layers: 
`layer_average()`,
`layer_concatenate()`,
`layer_dot()`,
`layer_maximum()`,
`layer_minimum()`,
`layer_subtract()`




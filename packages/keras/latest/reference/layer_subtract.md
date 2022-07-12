# layer_subtract


Layer that subtracts two inputs.




## Description

It takes as input a list of tensors of size 2, both of the same shape, and
returns a single tensor, (``inputs[[1]] - inputs[[2]]``), also of the same
shape.





## Usage
```r
layer_subtract(inputs, ...)
```




## Arguments


Argument      |Description
------------- |----------------
inputs | A input tensor, or list of two input tensors. Can be missing.
... | Unnamed args are treated as additional ``inputs``. Named arguments are passed on as standard layer arguments.





## Value

A tensor, the difference of the inputs. If ``inputs`` is missing, a
keras layer instance is returned.






## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/subtract

*  https://keras.io/api/layers/merging_layers/subtract


Other merge layers: 
`layer_average()`,
`layer_concatenate()`,
`layer_dot()`,
`layer_maximum()`,
`layer_minimum()`,
`layer_multiply()`




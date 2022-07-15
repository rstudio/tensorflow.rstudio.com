# layer_add


Layer that adds a list of inputs.




## Description

It takes as input a list of tensors, all of the same shape, and returns a
single tensor (also of the same shape).





## Usage
```r
layer_add(inputs, ...)
```




## Arguments


Argument      |Description
------------- |----------------
inputs | A list of input tensors (at least 2). Can be missing.
... | Standard layer arguments (must be named).





## Value

A tensor, the sum of the inputs. If ``inputs`` is missing, a keras
layer instance is returned.






## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/add

*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/Add

*  https://keras.io/api/layers/merging_layers/add





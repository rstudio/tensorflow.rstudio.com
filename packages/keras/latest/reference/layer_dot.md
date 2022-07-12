# layer_dot


Layer that computes a dot product between samples in two tensors.




## Description

Layer that computes a dot product between samples in two tensors.





## Usage
```r
layer_dot(inputs, ..., axes, normalize = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
inputs | A input tensor, or list of input tensors. Can be missing.
... | Unnamed args are treated as additional ``inputs``. Named arguments are passed on as standard layer arguments.
axes | Integer or list of integers, axis or axes along which to take the dot product.
normalize | Whether to L2-normalize samples along the dot product axis before taking the dot product. If set to TRUE, then the output of the dot product is the cosine proximity between the two samples.





## Value

If ``inputs`` is supplied: A tensor, the dot product of the samples
from the inputs. If ``inputs`` is missing, a keras layer instance is
returned.






## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/dot

*  https://keras.io/api/layers/merging_layers/dot/


Other merge layers: 
`layer_average()`,
`layer_concatenate()`,
`layer_maximum()`,
`layer_minimum()`,
`layer_multiply()`,
`layer_subtract()`




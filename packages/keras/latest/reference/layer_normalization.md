# layer_normalization


A preprocessing layer which normalizes continuous features.




## Description

A preprocessing layer which normalizes continuous features.





## Usage
```r
layer_normalization(object, axis = -1L, mean = NULL, variance = NULL, ...)
```




## Arguments


Argument      |Description
------------- |----------------
object | What to compose the new ``Layer`` instance with. Typically a Sequential model or a Tensor (e.g., as returned by ``layer_input()``). The return value depends on ``object``. If ``object`` is:   *  missing or `NULL`, the `Layer` instance is returned.  *  a `Sequential` model, the model with an additional layer is returned.  *  a Tensor, the output tensor from `layer_instance(object)` is returned.
axis | Integer, list of integers, or NULL. The axis or axes that should have a separate mean and variance for each index in the shape. For example, if shape is (NULL, 5) and ``axis=1``, the layer will track 5 separate mean and variance values for the last axis. If ``axis`` is set to ``NULL``, the layer will normalize all elements in the input by a scalar mean and variance. Defaults to -1, where the last axis of the input is assumed to be a feature dimension and is normalized per index. Note that in the specific case of batched scalar inputs where the only axis is the batch axis, the default will normalize each index in the batch separately. In this case, consider passing ``axis = NULL``.
mean | The mean value(s) to use during normalization. The passed value(s) will be broadcast to the shape of the kept axes above; if the value(s) cannot be broadcast, an error will be raised when this layer's ``build()`` method is called.
variance | The variance value(s) to use during normalization. The passed value(s) will be broadcast to the shape of the kept axes above; if the value(s) cannot be broadcast, an error will be raised when this layer's ``build()`` method is called.
... | standard layer arguments.




## Details

This layer will shift and scale inputs into a distribution centered around 0
with standard deviation 1. It accomplishes this by precomputing the mean and
variance of the data, and calling ``(input - mean) / sqrt(var)`` at runtime.

The mean and variance values for the layer must be either supplied on
construction or learned via ``adapt()``. ``adapt()`` will compute the mean and
variance of the data and store them as the layer's weights. ``adapt()`` should
be called before ``fit()``, ``evaluate()``, or ``predict()``.







## See Also



*  adapt()

*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/Normalization

*  https://keras.io/api/layers/preprocessing_layers/numerical/normalization


Other numerical features preprocessing layers: 
`layer_discretization()`

Other preprocessing layers: 
`layer_category_encoding()`,
`layer_center_crop()`,
`layer_discretization()`,
`layer_hashing()`,
`layer_integer_lookup()`,
`layer_random_brightness()`,
`layer_random_contrast()`,
`layer_random_crop()`,
`layer_random_flip()`,
`layer_random_height()`,
`layer_random_rotation()`,
`layer_random_translation()`,
`layer_random_width()`,
`layer_random_zoom()`,
`layer_rescaling()`,
`layer_resizing()`,
`layer_string_lookup()`,
`layer_text_vectorization()`




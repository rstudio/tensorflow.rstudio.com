# layer_unit_normalization


Unit normalization layer




## Description

Unit normalization layer





## Usage
```r
layer_unit_normalization(object, axis = -1L, ...)
```




## Arguments


Argument      |Description
------------- |----------------
object | What to compose the new ``Layer`` instance with. Typically a Sequential model or a Tensor (e.g., as returned by ``layer_input()``). The return value depends on ``object``. If ``object`` is:   *  missing or `NULL`, the `Layer` instance is returned.  *  a `Sequential` model, the model with an additional layer is returned.  *  a Tensor, the output tensor from `layer_instance(object)` is returned.
axis | Integer or list. The axis or axes to normalize across. Typically this is the features axis or axes. The left-out axes are typically the batch axis or axes. Defaults to ``-1``, the last dimension in the input.
... | standard layer arguments.  html<div class="sourceCode r">data <- as_tensor(1:6, shape = c(2, 3), dtype = "float32") normalized_data <- data %>% layer_unit_normalization() for(row in 1:2)   normalized_data[row, ] %>%   { sum(.^2) } %>%   print() # tf.Tensor(0.9999999, shape=(), dtype=float32) # tf.Tensor(1.0, shape=(), dtype=float32) html</div>




## Details

Normalize a batch of inputs so that each input in the batch has a L2 norm
equal to 1 (across the axes specified in ``axis``).







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/UnitNormalization





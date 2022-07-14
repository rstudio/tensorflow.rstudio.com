# layer_global_max_pooling_1d


Global max pooling operation for temporal data.




## Description

Global max pooling operation for temporal data.





## Usage
```r
layer_global_max_pooling_1d(
  object,
  data_format = "channels_last",
  keepdims = FALSE,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
object | What to compose the new ``Layer`` instance with. Typically a Sequential model or a Tensor (e.g., as returned by ``layer_input()``). The return value depends on ``object``. If ``object`` is:   *  missing or `NULL`, the `Layer` instance is returned.  *  a `Sequential` model, the model with an additional layer is returned.  *  a Tensor, the output tensor from `layer_instance(object)` is returned.
data_format | One of ``channels_last`` (default) or ``channels_first``. The ordering of the dimensions in the inputs.
keepdims | A boolean, whether to keep the spatial dimensions or not. If ``keepdims`` is ``FALSE`` (default), the rank of the tensor is reduced for spatial dimensions. If ``keepdims`` is ``TRUE``, the spatial dimensions are retained with length 1. The behavior is the same as for ``tf.reduce_mean`` or ``np.mean``.
... | standard layer arguments.







## See Also

Other pooling layers: 
`layer_average_pooling_1d()`,
`layer_average_pooling_2d()`,
`layer_average_pooling_3d()`,
`layer_global_average_pooling_1d()`,
`layer_global_average_pooling_2d()`,
`layer_global_average_pooling_3d()`,
`layer_global_max_pooling_2d()`,
`layer_global_max_pooling_3d()`,
`layer_max_pooling_1d()`,
`layer_max_pooling_2d()`,
`layer_max_pooling_3d()`




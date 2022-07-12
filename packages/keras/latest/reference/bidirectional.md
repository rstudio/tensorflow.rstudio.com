# bidirectional


Bidirectional wrapper for RNNs




## Description

Bidirectional wrapper for RNNs





## Usage
```r
bidirectional(
  object,
  layer,
  merge_mode = "concat",
  weights = NULL,
  backward_layer = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
object | What to compose the new ``Layer`` instance with. Typically a Sequential model or a Tensor (e.g., as returned by ``layer_input()``). The return value depends on ``object``. If ``object`` is:   *  missing or `NULL`, the `Layer` instance is returned.  *  a `Sequential` model, the model with an additional layer is returned.  *  a Tensor, the output tensor from `layer_instance(object)` is returned.
layer | A ``RNN`` layer instance, such as ``layer_lstm()`` or ``layer_gru()``. It could also be a ``keras$layers$Layer`` instance that meets the following criteria:   *  Be a sequence-processing layer (accepts 3D+ inputs).  *  Have a `go_backwards`, `return_sequences` and `return_state` attribute (with the same semantics as for the `RNN` class).  *  Have an `input_spec` attribute.  *  Implement serialization via `get_config()` and `from_config()`. Note that the recommended way to create new RNN layers is to write a custom RNN cell and use it with `layer_rnn()`, instead of subclassing `keras$layers$Layer` directly.  *  When `returns_sequences = TRUE`, the output of the masked timestep will be zero regardless of the layer's original `zero_output_for_mask` value.
merge_mode | Mode by which outputs of the forward and backward RNNs will be combined. One of ``'sum'``, ``'mul'``, ``'concat'``, ``'ave'``, ``NULL``. If ``NULL``, the outputs will not be combined, they will be returned as a list. Default value is ``'concat'``.
weights | Split and propagated to the ``initial_weights`` attribute on the forward and backward layer.
backward_layer | Optional ``keras.layers.RNN``, or ``keras.layers.Layer`` instance to be used to handle backwards input processing. If ``backward_layer`` is not provided, the layer instance passed as the ``layer`` argument will be used to generate the backward layer automatically. Note that the provided ``backward_layer`` layer should have properties matching those of the ``layer`` argument, in particular it should have the same values for ``stateful``, ``return_states``, ``return_sequences``, etc. In addition, ``backward_layer`` and ``layer`` should have different ``go_backwards`` argument values. A ``ValueError`` will be raised if these requirements are not met.
... | standard layer arguments.







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/Bidirectional

*  https://keras.io/api/layers/recurrent_layers/bidirectional/


Other layer wrappers: 
`time_distributed()`




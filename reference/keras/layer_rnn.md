# layer_rnn


Base class for recurrent layers




## Description

Base class for recurrent layers





## Usage
```r
layer_rnn(
  object,
  cell,
  return_sequences = FALSE,
  return_state = FALSE,
  go_backwards = FALSE,
  stateful = FALSE,
  unroll = FALSE,
  time_major = FALSE,
  ...,
  zero_output_for_mask = FALSE
)
```




## Arguments


Argument      |Description
------------- |----------------
object | What to compose the new ``Layer`` instance with. Typically a Sequential model or a Tensor (e.g., as returned by ``layer_input()``). The return value depends on ``object``. If ``object`` is:   *  missing or `NULL`, the `Layer` instance is returned.  *  a `Sequential` model, the model with an additional layer is returned.  *  a Tensor, the output tensor from `layer_instance(object)` is returned.
cell | A RNN cell instance or a list of RNN cell instances. A RNN cell is a class that has:   *  A `call(input_at_t, states_at_t)` method, returning (output_at_t, states_at_t_plus_1). The call method of the cell can also take the optional argument `constants`, see section "Note on passing external constants" below.  *  A `state_size` attribute. This can be a single integer (single state) in which case it is the size of the recurrent state. This can also be a list of integers (one size per state). The `state_size` can also be TensorShape or list of TensorShape, to represent high dimension state.  *  A `output_size` attribute. This can be a single integer or a TensorShape, which represent the shape of the output. For backward compatible reason, if this attribute is not available for the cell, the value will be inferred by the first element of the `state_size`.  *  A `get_initial_state(inputs=NULL, batch_size=NULL, dtype=NULL)` method that creates a tensor meant to be fed to `call()` as the initial state, if the user didn't specify any initial state via other means. The returned initial state should have a shape of [batch_size, cell$state_size]. The cell might choose to create a tensor full of zeros, or full of other values based on the cell's implementation. `inputs` is the input tensor to the RNN layer, which should contain the batch size as first dimension (`inputs$shape[1]`), and also dtype (`inputs$dtype`). Note that the `shape[1]` might be `NULL` during the graph construction. Either the `inputs` or the pair of `batch_size` and `dtype` are provided. `batch_size` is a scalar tensor that represents the batch size of the inputs. `dtype` is `tf.DType` that represents the dtype of the inputs. For backward compatibility, if this method is not implemented by the cell, the RNN layer will create a zero filled tensor with the size of [batch_size, cell$state_size]. In the case that `cell` is a list of RNN cell instances, the cells will be stacked on top of each other in the RNN, resulting in an efficient stacked RNN.
return_sequences | Boolean (default ``FALSE``). Whether to return the last output in the output sequence, or the full sequence.
return_state | Boolean (default ``FALSE``). Whether to return the last state in addition to the output.
go_backwards | Boolean (default ``FALSE``). If ``TRUE``, process the input sequence backwards and return the reversed sequence.
stateful | Boolean (default ``FALSE``). If ``TRUE``, the last state for each sample at index ``i`` in a batch will be used as initial state for the sample of index ``i`` in the following batch.
unroll | Boolean (default ``FALSE``). If TRUE, the network will be unrolled, else a symbolic loop will be used. Unrolling can speed-up a RNN, although it tends to be more memory-intensive. Unrolling is only suitable for short sequences.
time_major | The shape format of the ``inputs`` and ``outputs`` tensors. If ``TRUE``, the inputs and outputs will be in shape (timesteps, batch, ...), whereas in the FALSE case, it will be (batch, timesteps, ...). Using ``time_major = TRUE`` is a bit more efficient because it avoids transposes at the beginning and end of the RNN calculation. However, most TensorFlow data is batch-major, so by default this function accepts input and emits output in batch-major form.
... | standard layer arguments.
zero_output_for_mask | Boolean (default ``FALSE``). Whether the output should use zeros for the masked timesteps. Note that this field is only used when ``return_sequences`` is TRUE and mask is provided. It can useful if you want to reuse the raw output sequence of the RNN without interference from the masked timesteps, eg, merging bidirectional RNNs.




## Details

See https://www.tensorflow.org/guide/keras/rnnthe Keras RNN API guide
for details about the usage of RNN API.







## See Also



*  https://www.tensorflow.org/guide/keras/rnn




*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/RNN

*  https://keras.io/api/layers/recurrent_layers/rnn

*  `reticulate::py_help(keras$layers$RNN)`


Other recurrent layers: 
`layer_cudnn_gru()`,
`layer_cudnn_lstm()`,
`layer_gru()`,
`layer_lstm()`,
`layer_simple_rnn()`




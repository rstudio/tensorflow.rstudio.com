# layer_gru


Gated Recurrent Unit - Cho et al.




## Description

There are two variants. The default one is based on 1406.1078v3 and
has reset gate applied to hidden state before matrix multiplication. The
other one is based on original 1406.1078v1 and has the order reversed.





## Usage
```r
layer_gru(
  object,
  units,
  activation = "tanh",
  recurrent_activation = "sigmoid",
  use_bias = TRUE,
  return_sequences = FALSE,
  return_state = FALSE,
  go_backwards = FALSE,
  stateful = FALSE,
  unroll = FALSE,
  time_major = FALSE,
  reset_after = TRUE,
  kernel_initializer = "glorot_uniform",
  recurrent_initializer = "orthogonal",
  bias_initializer = "zeros",
  kernel_regularizer = NULL,
  recurrent_regularizer = NULL,
  bias_regularizer = NULL,
  activity_regularizer = NULL,
  kernel_constraint = NULL,
  recurrent_constraint = NULL,
  bias_constraint = NULL,
  dropout = 0,
  recurrent_dropout = 0,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
object | What to compose the new ``Layer`` instance with. Typically a Sequential model or a Tensor (e.g., as returned by ``layer_input()``). The return value depends on ``object``. If ``object`` is:   *  missing or `NULL`, the `Layer` instance is returned.  *  a `Sequential` model, the model with an additional layer is returned.  *  a Tensor, the output tensor from `layer_instance(object)` is returned.
units | Positive integer, dimensionality of the output space.
activation | Activation function to use. Default: hyperbolic tangent (``tanh``). If you pass ``NULL``, no activation is applied (ie. "linear" activation: ``a(x) = x``).
recurrent_activation | Activation function to use for the recurrent step.
use_bias | Boolean, whether the layer uses a bias vector.
return_sequences | Boolean. Whether to return the last output in the output sequence, or the full sequence.
return_state | Boolean (default FALSE). Whether to return the last state in addition to the output.
go_backwards | Boolean (default FALSE). If TRUE, process the input sequence backwards and return the reversed sequence.
stateful | Boolean (default FALSE). If TRUE, the last state for each sample at index i in a batch will be used as initial state for the sample of index i in the following batch.
unroll | Boolean (default FALSE). If TRUE, the network will be unrolled, else a symbolic loop will be used. Unrolling can speed-up a RNN, although it tends to be more memory-intensive. Unrolling is only suitable for short sequences.
time_major | If True, the inputs and outputs will be in shape [timesteps, batch, feature], whereas in the False case, it will be [batch, timesteps, feature]. Using ``time_major = TRUE`` is a bit more efficient because it avoids transposes at the beginning and end of the RNN calculation. However, most TensorFlow data is batch-major, so by default this function accepts input and emits output in batch-major form.
reset_after | GRU convention (whether to apply reset gate after or before matrix multiplication). FALSE = "before" (default), TRUE = "after" (CuDNN compatible).
kernel_initializer | Initializer for the ``kernel`` weights matrix, used for the linear transformation of the inputs.
recurrent_initializer | Initializer for the ``recurrent_kernel`` weights matrix, used for the linear transformation of the recurrent state.
bias_initializer | Initializer for the bias vector.
kernel_regularizer | Regularizer function applied to the ``kernel`` weights matrix.
recurrent_regularizer | Regularizer function applied to the ``recurrent_kernel`` weights matrix.
bias_regularizer | Regularizer function applied to the bias vector.
activity_regularizer | Regularizer function applied to the output of the layer (its "activation")..
kernel_constraint | Constraint function applied to the ``kernel`` weights matrix.
recurrent_constraint | Constraint function applied to the ``recurrent_kernel`` weights matrix.
bias_constraint | Constraint function applied to the bias vector.
dropout | Float between 0 and 1. Fraction of the units to drop for the linear transformation of the inputs.
recurrent_dropout | Float between 0 and 1. Fraction of the units to drop for the linear transformation of the recurrent state.
... | Standard Layer args.




## Details

The second variant is compatible with CuDNNGRU (GPU-only) and allows
inference on CPU. Thus it has separate biases for ``kernel`` and
``recurrent_kernel``. Use ``reset_after = TRUE`` and
``recurrent_activation = "sigmoid"``.







## See Also



*  https://www.tensorflow.org/guide/keras/rnn


Other recurrent layers: 
`layer_cudnn_gru()`,
`layer_cudnn_lstm()`,
`layer_lstm()`,
`layer_rnn()`,
`layer_simple_rnn()`




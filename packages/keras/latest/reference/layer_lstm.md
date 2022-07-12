# layer_lstm


Long Short-Term Memory unit - Hochreiter 1997.




## Description

For a step-by-step description of the algorithm, see https://colah.github.io/posts/2015-08-Understanding-LSTMs/this tutorial.





## Usage
```r
layer_lstm(
  object,
  units,
  activation = "tanh",
  recurrent_activation = "sigmoid",
  use_bias = TRUE,
  return_sequences = FALSE,
  return_state = FALSE,
  go_backwards = FALSE,
  stateful = FALSE,
  time_major = FALSE,
  unroll = FALSE,
  kernel_initializer = "glorot_uniform",
  recurrent_initializer = "orthogonal",
  bias_initializer = "zeros",
  unit_forget_bias = TRUE,
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
time_major | If True, the inputs and outputs will be in shape [timesteps, batch, feature], whereas in the False case, it will be [batch, timesteps, feature]. Using ``time_major = TRUE`` is a bit more efficient because it avoids transposes at the beginning and end of the RNN calculation. However, most TensorFlow data is batch-major, so by default this function accepts input and emits output in batch-major form.
unroll | Boolean (default FALSE). If TRUE, the network will be unrolled, else a symbolic loop will be used. Unrolling can speed-up a RNN, although it tends to be more memory-intensive. Unrolling is only suitable for short sequences.
kernel_initializer | Initializer for the ``kernel`` weights matrix, used for the linear transformation of the inputs.
recurrent_initializer | Initializer for the ``recurrent_kernel`` weights matrix, used for the linear transformation of the recurrent state.
bias_initializer | Initializer for the bias vector.
unit_forget_bias | Boolean. If TRUE, add 1 to the bias of the forget gate at initialization. Setting it to true will also force ``bias_initializer="zeros"``. This is recommended in https://proceedings.mlr.press/v37/jozefowicz15.pdfJozefowicz et al.
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







## See Also



*  https://www.tensorflow.org/guide/keras/rnn


Other recurrent layers: 
`layer_cudnn_gru()`,
`layer_cudnn_lstm()`,
`layer_gru()`,
`layer_rnn()`,
`layer_simple_rnn()`

Other recurrent layers: 
`layer_cudnn_gru()`,
`layer_cudnn_lstm()`,
`layer_gru()`,
`layer_rnn()`,
`layer_simple_rnn()`




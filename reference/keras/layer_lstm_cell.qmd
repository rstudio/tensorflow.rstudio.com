# layer_lstm_cell


Cell class for the LSTM layer




## Description

Cell class for the LSTM layer





## Usage
```r
layer_lstm_cell(
  units,
  activation = "tanh",
  recurrent_activation = "sigmoid",
  use_bias = TRUE,
  kernel_initializer = "glorot_uniform",
  recurrent_initializer = "orthogonal",
  bias_initializer = "zeros",
  unit_forget_bias = TRUE,
  kernel_regularizer = NULL,
  recurrent_regularizer = NULL,
  bias_regularizer = NULL,
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
units | Positive integer, dimensionality of the output space.
activation | Activation function to use. Default: hyperbolic tangent (``tanh``). If you pass ``NULL``, no activation is applied (ie. "linear" activation: ``a(x) = x``).
recurrent_activation | Activation function to use for the recurrent step. Default: sigmoid (``sigmoid``). If you pass ``NULL``, no activation is applied (ie. "linear" activation: ``a(x) = x``).
use_bias | Boolean, (default ``TRUE``), whether the layer uses a bias vector.
kernel_initializer | Initializer for the ``kernel`` weights matrix, used for the linear transformation of the inputs. Default: ``glorot_uniform``.
recurrent_initializer | Initializer for the ``recurrent_kernel`` weights matrix, used for the linear transformation of the recurrent state. Default: ``orthogonal``.
bias_initializer | Initializer for the bias vector. Default: ``zeros``.
unit_forget_bias | Boolean (default ``TRUE``). If TRUE, add 1 to the bias of the forget gate at initialization. Setting it to true will also force ``bias_initializer="zeros"``. This is recommended in https://proceedings.mlr.press/v37/jozefowicz15.pdfJozefowicz et al.
kernel_regularizer | Regularizer function applied to the ``kernel`` weights matrix. Default: ``NULL``.
recurrent_regularizer | Regularizer function applied to the ``recurrent_kernel`` weights matrix. Default: ``NULL``.
bias_regularizer | Regularizer function applied to the bias vector. Default: ``NULL``.
kernel_constraint | Constraint function applied to the ``kernel`` weights matrix. Default: ``NULL``.
recurrent_constraint | Constraint function applied to the ``recurrent_kernel`` weights matrix. Default: ``NULL``.
bias_constraint | Constraint function applied to the bias vector. Default: ``NULL``.
dropout | Float between 0 and 1. Fraction of the units to drop for the linear transformation of the inputs. Default: 0.
recurrent_dropout | Float between 0 and 1. Fraction of the units to drop for the linear transformation of the recurrent state. Default: 0.
... | standard layer arguments.




## Details

See https://www.tensorflow.org/guide/keras/rnnthe Keras RNN API guide
for details about the usage of RNN API.

This class processes one step within the whole time sequence input, whereas
``tf$keras$layer$LSTM`` processes the whole sequence.

For example:

html<div class="sourceCode r">inputs <- k_random_normal(c(32, 10, 8))
rnn <- layer_rnn(cell = layer_lstm_cell(units = 4))
output <- rnn(inputs)
dim(output) # (32, 4)

rnn <- layer_rnn(cell = layer_lstm_cell(units = 4),
                 return_sequences = TRUE,
                 return_state = TRUE)
c(whole_seq_output, final_memory_state, final_carry_state) %<-% rnn(inputs)

dim(whole_seq_output)   # (32, 10, 4)
dim(final_memory_state) # (32, 4)
dim(final_carry_state)  # (32, 4)
html</div>







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/LSTMCell


Other RNN cell layers: 
`layer_gru_cell()`,
`layer_simple_rnn_cell()`,
`layer_stacked_rnn_cells()`




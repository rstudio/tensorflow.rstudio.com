# layer_simple_rnn_cell


Cell class for SimpleRNN




## Description

Cell class for SimpleRNN





## Usage
```r
layer_simple_rnn_cell(
  units,
  activation = "tanh",
  use_bias = TRUE,
  kernel_initializer = "glorot_uniform",
  recurrent_initializer = "orthogonal",
  bias_initializer = "zeros",
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
use_bias | Boolean, (default ``TRUE``), whether the layer uses a bias vector.
kernel_initializer | Initializer for the ``kernel`` weights matrix, used for the linear transformation of the inputs. Default: ``glorot_uniform``.
recurrent_initializer | Initializer for the ``recurrent_kernel`` weights matrix, used for the linear transformation of the recurrent state. Default: ``orthogonal``.
bias_initializer | Initializer for the bias vector. Default: ``zeros``.
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
``tf.keras.layer.SimpleRNN`` processes the whole sequence.







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/SimpleRNNCell

*  https://keras.io/api/layers


Other RNN cell layers: 
`layer_gru_cell()`,
`layer_lstm_cell()`,
`layer_stacked_rnn_cells()`




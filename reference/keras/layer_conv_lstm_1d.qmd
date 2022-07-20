# layer_conv_lstm_1d


1D Convolutional LSTM




## Description

1D Convolutional LSTM





## Usage
```r
layer_conv_lstm_1d(
  object,
  filters,
  kernel_size,
  strides = 1L,
  padding = "valid",
  data_format = NULL,
  dilation_rate = 1L,
  activation = "tanh",
  recurrent_activation = "hard_sigmoid",
  use_bias = TRUE,
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
  return_sequences = FALSE,
  return_state = FALSE,
  go_backwards = FALSE,
  stateful = FALSE,
  dropout = 0,
  recurrent_dropout = 0,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
object | What to compose the new ``Layer`` instance with. Typically a Sequential model or a Tensor (e.g., as returned by ``layer_input()``). The return value depends on ``object``. If ``object`` is:   *  missing or `NULL`, the `Layer` instance is returned.  *  a `Sequential` model, the model with an additional layer is returned.  *  a Tensor, the output tensor from `layer_instance(object)` is returned.
filters | Integer, the dimensionality of the output space (i.e. the number of output filters in the convolution).
kernel_size | An integer or list of n integers, specifying the dimensions of the convolution window.
strides | An integer or list of n integers, specifying the strides of the convolution. Specifying any stride value != 1 is incompatible with specifying any ``dilation_rate`` value != 1.
padding | One of ``"valid"`` or ``"same"`` (case-insensitive). ``"valid"`` means no padding. ``"same"`` results in padding evenly to the left/right or up/down of the input such that output has the same height/width dimension as the input.
data_format | A string, one of ``channels_last`` (default) or ``channels_first``. The ordering of the dimensions in the inputs. ``channels_last`` corresponds to inputs with shape (batch, time, ..., channels) while ``channels_first`` corresponds to inputs with shape (batch, time, channels, ...). It defaults to the ``image_data_format`` value found in your Keras config file at ~/.keras/keras.json. If you never set it, then it will be "channels_last".
dilation_rate | An integer or list of n integers, specifying the dilation rate to use for dilated convolution. Currently, specifying any ``dilation_rate`` value != 1 is incompatible with specifying any ``strides`` value != 1.
activation | Activation function to use. By default hyperbolic tangent activation function is applied (``tanh(x)``).
recurrent_activation | Activation function to use for the recurrent step.
use_bias | Boolean, whether the layer uses a bias vector.
kernel_initializer | Initializer for the ``kernel`` weights matrix, used for the linear transformation of the inputs.
recurrent_initializer | Initializer for the ``recurrent_kernel`` weights matrix, used for the linear transformation of the recurrent state.
bias_initializer | Initializer for the bias vector.
unit_forget_bias | Boolean. If TRUE, add 1 to the bias of the forget gate at initialization. Use in combination with ``bias_initializer="zeros"``. This is recommended in https://proceedings.mlr.press/v37/jozefowicz15.pdfJozefowicz et al., 2015
kernel_regularizer | Regularizer function applied to the ``kernel`` weights matrix.
recurrent_regularizer | Regularizer function applied to the ``recurrent_kernel`` weights matrix.
bias_regularizer | Regularizer function applied to the bias vector.
activity_regularizer | Regularizer function applied to.
kernel_constraint | Constraint function applied to the ``kernel`` weights matrix.
recurrent_constraint | Constraint function applied to the ``recurrent_kernel`` weights matrix.
bias_constraint | Constraint function applied to the bias vector.
return_sequences | Boolean. Whether to return the last output in the output sequence, or the full sequence. (default FALSE)
return_state | Boolean Whether to return the last state in addition to the output. (default FALSE)
go_backwards | Boolean (default FALSE). If TRUE, process the input sequence backwards.
stateful | Boolean (default FALSE). If TRUE, the last state for each sample at index i in a batch will be used as initial state for the sample of index i in the following batch.
dropout | Float between 0 and 1. Fraction of the units to drop for the linear transformation of the inputs.
recurrent_dropout | Float between 0 and 1. Fraction of the units to drop for the linear transformation of the recurrent state.
... | standard layer arguments.




## Details

Similar to an LSTM layer, but the input transformations
and recurrent transformations are both convolutional.







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/ConvLSTM1D





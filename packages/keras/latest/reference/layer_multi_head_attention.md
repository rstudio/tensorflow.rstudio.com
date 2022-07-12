# layer_multi_head_attention


MultiHeadAttention layer




## Description

This is an implementation of multi-headed attention based on "Attention is all
you Need". If query, key, value are the same, then this is self-attention.
Each timestep in query attends to the corresponding sequence in key, and returns
a fixed-width vector.





## Usage
```r
layer_multi_head_attention(
  inputs,
  num_heads,
  key_dim,
  value_dim = NULL,
  dropout = 0,
  use_bias = TRUE,
  output_shape = NULL,
  attention_axes = NULL,
  kernel_initializer = "glorot_uniform",
  bias_initializer = "zeros",
  kernel_regularizer = NULL,
  bias_regularizer = NULL,
  activity_regularizer = NULL,
  kernel_constraint = NULL,
  bias_constraint = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
inputs | a list of inputs first should be the query tensor, the second the value tensor
num_heads | Number of attention heads.
key_dim | Size of each attention head for query and key.
value_dim | Size of each attention head for value.
dropout | Dropout probability.
use_bias | Boolean, whether the dense layers use bias vectors/matrices.
output_shape | The expected shape of an output tensor, besides the batch and sequence dims. If not specified, projects back to the key feature dim.
attention_axes | axes over which the attention is applied. None means attention over all axes, but batch, heads, and features.
kernel_initializer | Initializer for dense layer kernels.
bias_initializer | Initializer for dense layer biases.
kernel_regularizer | Regularizer for dense layer kernels.
bias_regularizer | Regularizer for dense layer biases.
activity_regularizer | Regularizer for dense layer activity.
kernel_constraint | Constraint for dense layer kernels.
bias_constraint | Constraint for dense layer kernels.
... | Other arguments passed to the layer. Eg, ``name``, ``training``.




## Details

This layer first projects query, key and value. These are (effectively) a list
of tensors of length num_attention_heads, where the corresponding shapes are
[batch_size, , key_dim], [batch_size, , key_dim], [batch_size, , value_dim].

Then, the query and key tensors are dot-producted and scaled. These are softmaxed
to obtain attention probabilities. The value tensors are then interpolated by
these probabilities, then concatenated back to a single tensor.

Finally, the result tensor with the last dimension as value_dim can take an
linear projection and return.





## Value



*  attention_output: The result of the computation, of shape [B, T, E], where
T is for target sequence shapes and E is the query input last dimension if
output_shape is None. Otherwise, the multi-head outputs are project to the
shape specified by output_shape.

*  attention_scores: (Optional) multi-head attention coeffients over attention axes.







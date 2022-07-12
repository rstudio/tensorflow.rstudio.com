# layer_additive_attention


Additive attention layer, a.k.a. Bahdanau-style attention




## Description

Additive attention layer, a.k.a. Bahdanau-style attention





## Usage
```r
layer_additive_attention(
  object,
  use_scale = TRUE,
  ...,
  causal = FALSE,
  dropout = 0
)
```




## Arguments


Argument      |Description
------------- |----------------
object | What to compose the new ``Layer`` instance with. Typically a Sequential model or a Tensor (e.g., as returned by ``layer_input()``). The return value depends on ``object``. If ``object`` is:   *  missing or `NULL`, the `Layer` instance is returned.  *  a `Sequential` model, the model with an additional layer is returned.  *  a Tensor, the output tensor from `layer_instance(object)` is returned.
use_scale | If ``TRUE``, will create a variable to scale the attention scores.
... | standard layer arguments.
causal | Boolean. Set to ``TRUE`` for decoder self-attention. Adds a mask such that position ``i`` cannot attend to positions ``j > i``. This prevents the flow of information from the future towards the past.
dropout | Float between 0 and 1. Fraction of the units to drop for the attention scores.




## Details

Inputs are ``query`` tensor of shape [batch_size, Tq, dim], ``value`` tensor of
shape [batch_size, Tv, dim] and ``key`` tensor of shape
[batch_size, Tv, dim]. The calculation follows the steps:


*  Reshape `query` and `key` into shapes [batch_size, Tq, 1, dim]
and [batch_size, 1, Tv, dim] respectively.

*  Calculate scores with shape [batch_size, Tq, Tv] as a non-linear
sum: `scores = tf.reduce_sum(tf.tanh(query + key), axis=-1)`

*  Use scores to calculate a distribution with shape
[batch_size, Tq, Tv]: `distribution = tf$nn$softmax(scores)`.

*  Use `distribution` to create a linear combination of `value` with
shape [batch_size, Tq, dim]:
return tf$matmul(distribution, value).








## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/AdditiveAttention

*  https://keras.io/api/layers/attention_layers/additive_attention/





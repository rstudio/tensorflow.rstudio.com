# layer_category_encoding


A preprocessing layer which encodes integer features.




## Description

This layer provides options for condensing data into a categorical encoding
when the total number of tokens are known in advance. It accepts integer
values as inputs, and it outputs a dense or sparse representation of those
inputs. For integer inputs where the total number of tokens is not known, use
`layer_integer_lookup()` instead.





## Usage
```r
layer_category_encoding(
  object,
  num_tokens = NULL,
  output_mode = "multi_hot",
  sparse = FALSE,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
object | What to compose the new ``Layer`` instance with. Typically a Sequential model or a Tensor (e.g., as returned by ``layer_input()``). The return value depends on ``object``. If ``object`` is:   *  missing or `NULL`, the `Layer` instance is returned.  *  a `Sequential` model, the model with an additional layer is returned.  *  a Tensor, the output tensor from `layer_instance(object)` is returned.
num_tokens | The total number of tokens the layer should support. All inputs to the layer must integers in the range 0 <= value < num_tokens, or an error will be thrown.
output_mode | Specification for the output of the layer. Defaults to ``"multi_hot"``. Values can be ``"one_hot"``, ``"multi_hot"`` or ``"count"``, configuring the layer as follows:   *  `"one_hot"`: Encodes each individual element in the input into an array of `num_tokens` size, containing a 1 at the element index. If the last dimension is size 1, will encode on that dimension. If the last dimension is not size 1, will append a new dimension for the encoded output.  *  `"multi_hot"`: Encodes each sample in the input into a single array of `num_tokens` size, containing a 1 for each vocabulary term present in the sample. Treats the last dimension as the sample dimension, if input shape is (..., sample_length), output shape will be (..., num_tokens).  *  `"count"`: Like `"multi_hot"`, but the int array contains a count of the number of times the token at that index appeared in the sample.   For all output modes, currently only output up to rank 2 is supported.
sparse | Boolean. If ``TRUE``, returns a ``SparseTensor`` instead of a dense ``Tensor``. Defaults to ``FALSE``.
... | standard layer arguments.







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/CategoryEncoding

*  https://keras.io/api/layers/preprocessing_layers/categorical/category_encoding/


Other categorical features preprocessing layers: 
`layer_hashing()`,
`layer_integer_lookup()`,
`layer_string_lookup()`

Other preprocessing layers: 
`layer_center_crop()`,
`layer_discretization()`,
`layer_hashing()`,
`layer_integer_lookup()`,
`layer_normalization()`,
`layer_random_brightness()`,
`layer_random_contrast()`,
`layer_random_crop()`,
`layer_random_flip()`,
`layer_random_height()`,
`layer_random_rotation()`,
`layer_random_translation()`,
`layer_random_width()`,
`layer_random_zoom()`,
`layer_rescaling()`,
`layer_resizing()`,
`layer_string_lookup()`,
`layer_text_vectorization()`




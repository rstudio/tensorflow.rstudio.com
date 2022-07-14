# layer_random_flip


Randomly flip each image horizontally and vertically




## Description

Randomly flip each image horizontally and vertically





## Usage
```r
layer_random_flip(object, mode = "horizontal_and_vertical", seed = NULL, ...)
```




## Arguments


Argument      |Description
------------- |----------------
object | What to compose the new ``Layer`` instance with. Typically a Sequential model or a Tensor (e.g., as returned by ``layer_input()``). The return value depends on ``object``. If ``object`` is:   *  missing or `NULL`, the `Layer` instance is returned.  *  a `Sequential` model, the model with an additional layer is returned.  *  a Tensor, the output tensor from `layer_instance(object)` is returned.
mode | String indicating which flip mode to use. Can be ``"horizontal"``, ``"vertical"``, or ``"horizontal_and_vertical"``. Defaults to ``"horizontal_and_vertical"``. ``"horizontal"`` is a left-right flip and ``"vertical"`` is a top-bottom flip.
seed | Integer. Used to create a random seed.
... | standard layer arguments.




## Details

This layer will flip the images based on the ``mode`` attribute.
During inference time, the output will be identical to input. Call the layer
with ``training = TRUE`` to flip the input.

Input shape:
3D (unbatched) or 4D (batched) tensor with shape:
(..., height, width, channels), in ``"channels_last"`` format.

Output shape:
3D (unbatched) or 4D (batched) tensor with shape:
(..., height, width, channels), in ``"channels_last"`` format.







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/layers/RandomFlip

*  https://keras.io/api/layers/preprocessing_layers/image_augmentation/random_flip


Other image augmentation layers: 
`layer_random_brightness()`,
`layer_random_contrast()`,
`layer_random_crop()`,
`layer_random_height()`,
`layer_random_rotation()`,
`layer_random_translation()`,
`layer_random_width()`,
`layer_random_zoom()`

Other preprocessing layers: 
`layer_category_encoding()`,
`layer_center_crop()`,
`layer_discretization()`,
`layer_hashing()`,
`layer_integer_lookup()`,
`layer_normalization()`,
`layer_random_brightness()`,
`layer_random_contrast()`,
`layer_random_crop()`,
`layer_random_height()`,
`layer_random_rotation()`,
`layer_random_translation()`,
`layer_random_width()`,
`layer_random_zoom()`,
`layer_rescaling()`,
`layer_resizing()`,
`layer_string_lookup()`,
`layer_text_vectorization()`




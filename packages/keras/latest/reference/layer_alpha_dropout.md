# layer_alpha_dropout


Applies Alpha Dropout to the input.




## Description

Alpha Dropout is a dropout that keeps mean and variance of inputs to their
original values, in order to ensure the self-normalizing property even after
this dropout.





## Usage
```r
layer_alpha_dropout(object, rate, noise_shape = NULL, seed = NULL, ...)
```




## Arguments


Argument      |Description
------------- |----------------
object | What to compose the new ``Layer`` instance with. Typically a Sequential model or a Tensor (e.g., as returned by ``layer_input()``). The return value depends on ``object``. If ``object`` is:   *  missing or `NULL`, the `Layer` instance is returned.  *  a `Sequential` model, the model with an additional layer is returned.  *  a Tensor, the output tensor from `layer_instance(object)` is returned.
rate | float, drop probability (as with ``layer_dropout()``). The multiplicative noise will have standard deviation ``sqrt(rate / (1 - rate))``.
noise_shape | Noise shape
seed | An integer to use as random seed.
... | standard layer arguments.




## Details

Alpha Dropout fits well to Scaled Exponential Linear Units by randomly
setting activations to the negative saturation value.







## See Also

https://www.tensorflow.org/api_docs/python/tf/keras/layers/AlphaDropout

Other noise layers: 
`layer_gaussian_dropout()`,
`layer_gaussian_noise()`




# k_conv2d


2D convolution.




## Description

2D convolution.





## Usage
```r
k_conv2d(
  x,
  kernel,
  strides = c(1, 1),
  padding = "valid",
  data_format = NULL,
  dilation_rate = c(1, 1)
)
```




## Arguments


Argument      |Description
------------- |----------------
x | Tensor or variable.
kernel | kernel tensor.
strides | strides
padding | string, ``"same"`` or ``"valid"``.
data_format | string, ``"channels_last"`` or ``"channels_first"``. Whether to use Theano or TensorFlow/CNTK data format for inputs/kernels/outputs.
dilation_rate | vector of 2 integers.





## Value

A tensor, result of 2D convolution.






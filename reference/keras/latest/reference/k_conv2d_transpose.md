# k_conv2d_transpose


2D deconvolution (i.e. transposed convolution).




## Description

2D deconvolution (i.e. transposed convolution).





## Usage
```r
k_conv2d_transpose(
  x,
  kernel,
  output_shape,
  strides = c(1, 1),
  padding = "valid",
  data_format = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
x | Tensor or variable.
kernel | kernel tensor.
output_shape | 1D int tensor for the output shape.
strides | strides list.
padding | string, ``"same"`` or ``"valid"``.
data_format | string, ``"channels_last"`` or ``"channels_first"``. Whether to use Theano or TensorFlow/CNTK data format for inputs/kernels/outputs.





## Value

A tensor, result of transposed 2D convolution.






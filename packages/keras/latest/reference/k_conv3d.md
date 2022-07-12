# k_conv3d


3D convolution.




## Description

3D convolution.





## Usage
```r
k_conv3d(
  x,
  kernel,
  strides = c(1, 1, 1),
  padding = "valid",
  data_format = NULL,
  dilation_rate = c(1, 1, 1)
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
dilation_rate | list of 3 integers.





## Value

A tensor, result of 3D convolution.






# k_separable_conv2d


2D convolution with separable filters.




## Description

2D convolution with separable filters.





## Usage
```r
k_separable_conv2d(
  x,
  depthwise_kernel,
  pointwise_kernel,
  strides = c(1, 1),
  padding = "valid",
  data_format = NULL,
  dilation_rate = c(1, 1)
)
```




## Arguments


Argument      |Description
------------- |----------------
x | input tensor
depthwise_kernel | convolution kernel for the depthwise convolution.
pointwise_kernel | kernel for the 1x1 convolution.
strides | strides list (length 2).
padding | string, ``"same"`` or ``"valid"``.
data_format | string, ``"channels_last"`` or ``"channels_first"``.
dilation_rate | list of integers, dilation rates for the separable convolution.





## Value

Output tensor.






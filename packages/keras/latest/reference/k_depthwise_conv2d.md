# k_depthwise_conv2d


Depthwise 2D convolution with separable filters.




## Description

Depthwise 2D convolution with separable filters.





## Usage
```r
k_depthwise_conv2d(
  x,
  depthwise_kernel,
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
strides | strides (length 2).
padding | string, ``"same"`` or ``"valid"``.
data_format | string, ``"channels_last"`` or ``"channels_first"``.
dilation_rate | vector of integers, dilation rates for the separable convolution.





## Value

Output tensor.






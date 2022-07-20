# k_conv1d


1D convolution.




## Description

1D convolution.





## Usage
```r
k_conv1d(
  x,
  kernel,
  strides = 1,
  padding = "valid",
  data_format = NULL,
  dilation_rate = 1
)
```




## Arguments


Argument      |Description
------------- |----------------
x | Tensor or variable.
kernel | kernel tensor.
strides | stride integer.
padding | string, ``"same"``, ``"causal"`` or ``"valid"``.
data_format | string, ``"channels_last"`` or ``"channels_first"``.
dilation_rate | integer dilate rate.





## Value

A tensor, result of 1D convolution.






# k_local_conv2d


Apply 2D conv with un-shared weights.




## Description

Apply 2D conv with un-shared weights.





## Usage
```r
k_local_conv2d(
  inputs,
  kernel,
  kernel_size,
  strides,
  output_shape,
  data_format = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
inputs | 4D tensor with shape: (batch_size, filters, new_rows, new_cols) if data_format='channels_first' or 4D tensor with shape: (batch_size, new_rows, new_cols, filters) if data_format='channels_last'.
kernel | the unshared weight for convolution, with shape (output_items, feature_dim, filters)
kernel_size | a list of 2 integers, specifying the width and height of the 2D convolution window.
strides | a list of 2 integers, specifying the strides of the convolution along the width and height.
output_shape | a list with (output_row, output_col)
data_format | the data format, channels_first or channels_last





## Value

A 4d tensor with shape: (batch_size, filters, new_rows, new_cols) if
data_format='channels_first' or 4D tensor with shape: (batch_size,
new_rows, new_cols, filters) if data_format='channels_last'.






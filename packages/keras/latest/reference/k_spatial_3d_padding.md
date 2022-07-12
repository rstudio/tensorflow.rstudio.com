# k_spatial_3d_padding


Pads 5D tensor with zeros along the depth, height, width dimensions.




## Description

Pads these dimensions with respectively ``padding[[1]]``, ``padding[[2]]``, and
``padding[[3]]`` zeros left and right. For 'channels_last' data_format, the
2nd, 3rd and 4th dimension will be padded. For 'channels_first' data_format,
the 3rd, 4th and 5th dimension will be padded.





## Usage
```r
k_spatial_3d_padding(
  x,
  padding = list(list(1, 1), list(1, 1), list(1, 1)),
  data_format = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
x | Tensor or variable.
padding | List of 3 lists, padding pattern.
data_format | string, ``"channels_last"`` or ``"channels_first"``.





## Value

A padded 5D tensor.






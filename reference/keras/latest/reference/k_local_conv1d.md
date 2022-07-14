# k_local_conv1d


Apply 1D conv with un-shared weights.




## Description

Apply 1D conv with un-shared weights.





## Usage
```r
k_local_conv1d(inputs, kernel, kernel_size, strides, data_format = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
inputs | 3D tensor with shape: (batch_size, steps, input_dim)
kernel | the unshared weight for convolution, with shape (output_length, feature_dim, filters)
kernel_size | a list of a single integer, specifying the length of the 1D convolution window
strides | a list of a single integer, specifying the stride length of the convolution
data_format | the data format, channels_first or channels_last





## Value

the tensor after 1d conv with un-shared weights, with shape
(batch_size, output_length, filters)






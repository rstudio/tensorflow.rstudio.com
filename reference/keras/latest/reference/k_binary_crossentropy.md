# k_binary_crossentropy


Binary crossentropy between an output tensor and a target tensor.




## Description

Binary crossentropy between an output tensor and a target tensor.





## Usage
```r
k_binary_crossentropy(target, output, from_logits = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
target | A tensor with the same shape as ``output``.
output | A tensor.
from_logits | Whether ``output`` is expected to be a logits tensor. By default, we consider that ``output`` encodes a probability distribution.





## Value

A tensor.






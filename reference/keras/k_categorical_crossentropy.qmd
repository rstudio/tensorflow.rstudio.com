# k_categorical_crossentropy


Categorical crossentropy between an output tensor and a target tensor.




## Description

Categorical crossentropy between an output tensor and a target tensor.





## Usage
```r
k_categorical_crossentropy(target, output, from_logits = FALSE, axis = -1)
```




## Arguments


Argument      |Description
------------- |----------------
target | A tensor of the same shape as ``output``.
output | A tensor resulting from a softmax (unless ``from_logits`` is TRUE, in which case ``output`` is expected to be the logits).
from_logits | Logical, whether ``output`` is the result of a softmax, or is a tensor of logits.
axis | Axis (axis indexes are 1-based). Pass -1 (the default) to select the last axis.





## Value

Output tensor.






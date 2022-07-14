# k_sparse_categorical_crossentropy


Categorical crossentropy with integer targets.




## Description

Categorical crossentropy with integer targets.





## Usage
```r
k_sparse_categorical_crossentropy(
  target,
  output,
  from_logits = FALSE,
  axis = -1
)
```




## Arguments


Argument      |Description
------------- |----------------
target | An integer tensor.
output | A tensor resulting from a softmax (unless ``from_logits`` is TRUE, in which case ``output`` is expected to be the logits).
from_logits | Boolean, whether ``output`` is the result of a softmax, or is a tensor of logits.
axis | Axis (axis indexes are 1-based). Pass -1 (the default) to select the last axis.





## Value

Output tensor.






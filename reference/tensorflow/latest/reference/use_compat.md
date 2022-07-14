# use_compat


Use Compatibility




## Description

Enables TensorFlow to run under a different API version for compatibility
with previous versions. For instance, this is useful to run TensorFlow 1.x
code when using TensorFlow 2.x.





## Usage
```r
use_compat(version = c("v1", "v2"))
```




## Arguments


Argument      |Description
------------- |----------------
version | The version to activate. Must be ``"v1"`` or ``"v2"``






## Examples

```r

library(tensorflow)
use_compat("v1")

```






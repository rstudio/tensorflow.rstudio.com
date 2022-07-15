# tf


Main TensorFlow module




## Description

Interface to main TensorFlow  module. Provides access to top level classes
and functions as well as sub-modules (e.g. ``tf$nn``,
``tf$contrib$learn``, etc.).





## Usage
```r
tf
```






## Examples

```r

library(tensorflow)

hello <- tf$constant('Hello, TensorFlow!')
zeros <- tf$Variable(tf$zeros(shape(1L)))

tf$print(hello)
tf$print(zeros)

```





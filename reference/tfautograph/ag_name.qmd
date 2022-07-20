# ag_name


Specify a tensor name




## Description

This can be used before any autographed expression that results in the
creation of a tensor or op graph node. This can be used before ``for`` (both with tensors and datasets), ``while``, and ``if`` statements.





## Usage
```r
ag_name(x)
```




## Arguments


Argument      |Description
------------- |----------------
x | A string





## Value

``x``, invisibly





## Examples

```r

## when you're in graph mode. (e.g, tf$executing_eagerly == FALSE)

ag_name("main-training-loop")
for(elem in dataset) ...

```





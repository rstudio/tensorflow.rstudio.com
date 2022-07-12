# ag_while_opts


specify ``tf.while_loop`` options




## Description

See https://www.tensorflow.org/versions/r2.0/api_docs/python/tf/while_loop
for additional details.





## Usage
```r
ag_while_opts(
  ...,
  shape_invariants = NULL,
  parallel_iterations = 10L,
  back_prop = TRUE,
  swap_memory = FALSE,
  maximum_iterations = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
... | Ignored, used to ensure all arguments supplied are named.
shape_invariants | The shape invariants for the loop variables.
parallel_iterations | The number of iterations allowed to run in parallel. It must be a positive integer.
back_prop | Deprecated (optional). ``FALSE`` disables support for back propagation. Prefer using ``tf$stop_gradient`` instead.
swap_memory | Whether GPU-CPU memory swap is enabled for this loop.
maximum_iterations | Optional maximum number of iterations of the while loop to run. If provided, the ``cond`` output is AND-ed with an additional condition ensuring the number of iterations executed is no greater than ``maximum_iterations``.





## Value

`NULL`` invisibly, called for it's side effect.





## Examples

```r

## use tf_function() to enter graph mode:
tf_function(autograph(function(n) {
  ag_name("silly-example")
  ag_while_opts(back_prop = FALSE)
  while(n > 0)
    n <- n - 1
}))

```





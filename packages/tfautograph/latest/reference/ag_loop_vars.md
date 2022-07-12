# ag_loop_vars


Specify loop variables




## Description

This can be used to manually specify which variables are to be included
explicitly as ``loop_vars`` when autographing an expression into a
``tf.while_loop()`` call, or the ``loop_vars`` equivalent when building a
``dataset.reduce()``.





## Usage
```r
ag_loop_vars(
  ...,
  list = character(),
  include = character(),
  exclude = character(),
  undef = character()
)
```




## Arguments


Argument      |Description
------------- |----------------
... | Variables as bare symbol names
list, include, exclude | optionally, the variable names as a character vector (use this as an escape hatch from the ``...`` lazy evaluation semantics).
undef | character vector of symbols




## Details

Use of this is usually not required as the loop variables are automatically
inferred. Inference is done by statically looking through the loop body and
finding the symbols that are the targets of the common assignment operators
from base R (<-, ->, ``=``), from package:zeallot (%<-% and %->%) and
package:magrittr (%<>%).

In certain circumstances, this approach may capture variables that are
intended to be local variables only. In those circumstances it is also
possible to specify them preceded with a ``-``.

Note, the specified loop vars are expected to exist before the autographed
expression, and a warning is issued otherwise (usually immediately preceding
an error thrown when attempting to actually autograph the expression)

Only bare symbol names can be supplied as loop vars. In the future, support
may be expanded to allow for nested complex composites (e.g., specifying
variables that are nested within a more complex structure--passing
``ag_loop_vars(foo$bar$baz)`` is currently not supported.)





## Value

the specified hint invisibly.





## Examples

```r

i <- tf$constant(0L)

autograph({
  ag_loop_vars(x, i)
  while(x > 0) {
    if(x %%2 == 0)
      i <- i + 1L
    x <- x - 1
  }
})

## sometimes, a variable is infered to be a loop_var unnecessarily. For example
x <- tf$constant(1:10)

# imagine x is left over in the current scope from some previous calculations
# It's value is not important, but it exists
autograph({
  for(i in tf$constant(1:6)) {
    x <- i * i
    tf$print(x)
  }
})

# this will throw an error because `x` was infered to be a `loop_var`,
# but it's shape witin the loop body is different from what it was before.
# there are two solutions to prevent `x` from being captured as a loop_var
## 1) remove `x` from the current scope like so:
rm(x)

## 2) provide a hint like so:
ag_loop_vars(-x)

## if your variable names are being dynamically generated, there is an
## escape hatch for the lazy evaluation semantics of ...
ag_loop_vars(exclude = "x")

```





# autograph


Autograph R code




## Description

Note, this documentation page is meant to serve as a technical reference, not
an introduction to ``autograph``. For the latter, please visit the
documentation website: (https://t-kalinowski.github.io/tfautograph/) or see
the package vignettes.





## Usage
```r
autograph(x)
```




## Arguments


Argument      |Description
------------- |----------------
x | a function supplied as a bare symbol, or an expression





## Value

if ``x`` is a function, then the the same function with a new parent
environment, ``package:tfautograph:ag_mask``, which is the autograph mask
that contains implementations of R control flow primitives that are capable
of handling tensorflow tensors. The parent of the
``package:tfautograph:ag_mask`` in turn is the original environment of ``x``.

if ``x`` is an expression, then that expression is evaluated in a special
environment with the autograph mask ``ag_mask`` active. If the result of that
expression included local assignment or modifications of variables, (for
example, via <-), those modified variables are then exported into the
current frame. The return value of the expression is then returned.






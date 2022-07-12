# is_keras_available


Check if Keras is Available




## Description

Probe to see whether the Keras Python package is available in the current
system environment.





## Usage
```r
is_keras_available(version = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
version | Minimum required version of Keras (defaults to ``NULL``, no required version).





## Value

Logical indicating whether Keras (or the specified minimum version of
Keras) is available.





## Examples

```r

# testthat utilty for skipping tests when Keras isn't available
skip_if_no_keras <- function(version = NULL) {
  if (!is_keras_available(version))
    skip("Required keras version not available for testing")
}

# use the function within a test
test_that("keras function works correctly", {
  skip_if_no_keras()
  # test code here
})

```






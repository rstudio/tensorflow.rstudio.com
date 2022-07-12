# tf_extract_opts


Tensor extract options




## Description

Tensor extract options





## Usage
```r
tf_extract_opts(
  style = getOption("tensorflow.extract.style"),
  ...,
  one_based = getOption("tensorflow.extract.one_based", TRUE),
  inclusive_stop = getOption("tensorflow.extract.inclusive_stop", TRUE),
  disallow_out_of_bounds = getOption("tensorflow.extract.dissallow_out_of_bounds",
    TRUE),
  warn_tensors_passed_asis = getOption("tensorflow.extract.warn_tensors_passed_asis",
    TRUE),
  warn_negatives_pythonic = getOption("tensorflow.extract.warn_negatives_pythonic",
    TRUE)
)
```




## Arguments


Argument      |Description
------------- |----------------
style | one of ``NULL`` (the default) ``"R"`` or ``"python"``. If supplied, this overrides all other options. ``"python"`` is equivalent to all the other arguments being ``FALSE``. ``"R"`` is equivalent to ``warn_tensors_passed_asis`` and ``warn_negatives_pythonic`` set to ``FALSE``
... | ignored
one_based | TRUE or FALSE, if one-based indexing should be used
inclusive_stop | TRUE or FALSE, if slices like ``start:stop`` should be inclusive of ``stop``
disallow_out_of_bounds | TRUE or FALSE, whether checks are performed on the slicing index to ensure it is within bounds.
warn_tensors_passed_asis | TRUE or FALSE, whether to emit a warning the first time a tensor is supplied to ``[`` that tensors are passed as-is, with no R to python translation
warn_negatives_pythonic | TRUE or FALSE, whether to emit a warning the first time a negative number is supplied to ``[`` about the non-standard (python-style) interpretation





## Value

an object with class "tf_extract_opts", suitable for passing to
[.tensorflow.tensor()





## Examples

```r

x <- tf$constant(1:10)

opts <-  tf_extract_opts("R")
x[1, options = opts]

# or for more fine-grained control
opts <- tf_extract_opts(
    one_based = FALSE,
    warn_tensors_passed_asis = FALSE,
    warn_negatives_pythonic = FALSE
)
x[0:2, options = opts]

```





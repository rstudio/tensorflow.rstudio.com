# dataset_scan


A transformation that scans a function across an input dataset




## Description

A transformation that scans a function across an input dataset





## Usage
```r
dataset_scan(dataset, initial_state, scan_func)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | A tensorflow dataset
initial_state | A nested structure of tensors, representing the initial state of the accumulator.
scan_func | A function that maps (old_state, input_element) to (new_state, output_element). It must take two arguments and return a pair of nested structures of tensors. The ``new_state`` must match the structure of ``initial_state``.




## Details

This transformation is a stateful relative of ``dataset_map()``.
In addition to mapping ``scan_func`` across the elements of the input dataset,
``scan()`` accumulates one or more state tensors, whose initial values are
``initial_state``.






## Examples

```r

initial_state <- as_tensor(0, dtype="int64")
scan_func <- function(state, i) list(state + i, state + i)
dataset <- range_dataset(0, 10) %>%
  dataset_scan(initial_state, scan_func)

reticulate::iterate(dataset, as.array) %>%
  unlist()
# 0  1  3  6 10 15 21 28 36 45

```





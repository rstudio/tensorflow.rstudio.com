# dataset_group_by_window


Group windows of elements by key and reduce them




## Description

Group windows of elements by key and reduce them





## Usage
```r
dataset_group_by_window(
  dataset,
  key_func,
  reduce_func,
  window_size = NULL,
  window_size_func = NULL,
  name = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | a TF Dataset
key_func | A function mapping a nested structure of tensors (having shapes and types defined by ``self$output_shapes`` and ``self$output_types``) to a scalar ``tf.int64`` tensor.
reduce_func | A function mapping a key and a dataset of up to ``window_size`` consecutive elements matching that key to another dataset.
window_size | A ``tf.int64`` scalar ``tf.Tensor``, representing the number of consecutive elements matching the same key to combine in a single batch, which will be passed to ``reduce_func``. Mutually exclusive with ``window_size_func``.
window_size_func | A function mapping a key to a ``tf.int64`` scalar ``tf.Tensor``, representing the number of consecutive elements matching the same key to combine in a single batch, which will be passed to ``reduce_func``. Mutually exclusive with ``window_size``.
name | (Optional.) A name for the Tensorflow operation.




## Details

This transformation maps each consecutive element in a dataset to a
key using ``key_func()`` and groups the elements by key. It then applies
``reduce_func()`` to at most ``window_size_func(key)`` elements matching the same
key. All except the final window for each key will contain
``window_size_func(key)`` elements; the final window may be smaller.

You may provide either a constant ``window_size`` or a window size determined
by the key through ``window_size_func``.

html<div class="sourceCode r">window_size <-  5
dataset <- range_dataset(to = 10) %>%
  dataset_group_by_window(
    key_func = function(x) x %% 2,
    reduce_func = function(key, ds) dataset_batch(ds, window_size),
    window_size = window_size
  )

it <- as_array_iterator(dataset)
while (!is.null(elem <- iter_next(it)))
  print(elem)
#> tf.Tensor([0 2 4 6 8], shape=(5), dtype=int64)
#> tf.Tensor([1 3 5 7 9], shape=(5), dtype=int64)
html</div>







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/data/Dataset#group_by_window





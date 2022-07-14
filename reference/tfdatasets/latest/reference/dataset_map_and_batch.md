# dataset_map_and_batch


Fused implementation of dataset_map() and dataset_batch()




## Description

Maps `map_func`` across batch_size consecutive elements of this dataset and then combines
them into a batch. Functionally, it is equivalent to map followed by batch. However, by
fusing the two transformations together, the implementation can be more efficient.





## Usage
```r
dataset_map_and_batch(
  dataset,
  map_func,
  batch_size,
  num_parallel_batches = NULL,
  drop_remainder = FALSE,
  num_parallel_calls = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | A dataset
map_func | A function mapping a nested structure of tensors (having shapes and types defined by `output_shapes()` and `output_types()` to another nested structure of tensors. It also supports ``purrr`` style lambda functions powered by `rlang::as_function()`.
batch_size | An integer, representing the number of consecutive elements of this dataset to combine in a single batch.
num_parallel_batches | (Optional) An integer, representing the number of batches to create in parallel. On one hand, higher values can help mitigate the effect of stragglers. On the other hand, higher values can increase contention if CPU is scarce.
drop_remainder | (Optional.) A boolean, representing whether the last batch should be dropped in the case it has fewer than ``batch_size`` elements; the default behavior is not to drop the smaller batch.
num_parallel_calls | (Optional) An integer, representing the number of elements to process in parallel If not specified, elements will be processed sequentially.







## See Also

Other dataset methods: 
`dataset_batch()`,
`dataset_cache()`,
`dataset_collect()`,
`dataset_concatenate()`,
`dataset_decode_delim()`,
`dataset_filter()`,
`dataset_interleave()`,
`dataset_map()`,
`dataset_padded_batch()`,
`dataset_prefetch_to_device()`,
`dataset_prefetch()`,
`dataset_reduce()`,
`dataset_repeat()`,
`dataset_shuffle_and_repeat()`,
`dataset_shuffle()`,
`dataset_skip()`,
`dataset_take_while()`,
`dataset_take()`,
`dataset_window()`




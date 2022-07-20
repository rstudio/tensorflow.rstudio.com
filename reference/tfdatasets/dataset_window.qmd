# dataset_window


Combines input elements into a dataset of windows.




## Description

Combines input elements into a dataset of windows.





## Usage
```r
dataset_window(dataset, size, shift = NULL, stride = 1, drop_remainder = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | A dataset
size | representing the number of elements of the input dataset to combine into a window.
shift | epresenting the forward shift of the sliding window in each iteration. Defaults to ``size``.
stride | representing the stride of the input elements in the sliding window.
drop_remainder | representing whether a window should be dropped in case its size is smaller than window_size.







## See Also

Other dataset methods: 
`dataset_batch()`,
`dataset_cache()`,
`dataset_collect()`,
`dataset_concatenate()`,
`dataset_decode_delim()`,
`dataset_filter()`,
`dataset_interleave()`,
`dataset_map_and_batch()`,
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
`dataset_take()`




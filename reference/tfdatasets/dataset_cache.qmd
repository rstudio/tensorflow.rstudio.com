# dataset_cache


Caches the elements in this dataset.




## Description

Caches the elements in this dataset.





## Usage
```r
dataset_cache(dataset, filename = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | A dataset
filename | String with the name of a directory on the filesystem to use for caching tensors in this Dataset. If a filename is not provided, the dataset will be cached in memory.





## Value

A dataset






## See Also

Other dataset methods: 
`dataset_batch()`,
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
`dataset_take()`,
`dataset_window()`




# dataset_shuffle_and_repeat


Shuffles and repeats a dataset returning a new permutation for each epoch.




## Description

Shuffles and repeats a dataset returning a new permutation for each epoch.





## Usage
```r
dataset_shuffle_and_repeat(dataset, buffer_size, count = NULL, seed = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | A dataset
buffer_size | An integer, representing the number of elements from this dataset from which the new dataset will sample.
count | (Optional.) An integer value representing the number of times the elements of this dataset should be repeated. The default behavior (if ``count`` is ``NULL`` or ``-1``) is for the elements to be repeated indefinitely.
seed | (Optional) An integer, representing the random seed that will be used to create the distribution.







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
`dataset_shuffle()`,
`dataset_skip()`,
`dataset_take_while()`,
`dataset_take()`,
`dataset_window()`




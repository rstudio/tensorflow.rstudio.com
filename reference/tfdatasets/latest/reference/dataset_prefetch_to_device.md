# dataset_prefetch_to_device


A transformation that prefetches dataset values to the given ``device``




## Description

A transformation that prefetches dataset values to the given ``device``





## Usage
```r
dataset_prefetch_to_device(dataset, device, buffer_size = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | A dataset
device | A string. The name of a device to which elements will be prefetched (e.g. "/gpu:0").
buffer_size | (Optional.) The number of elements to buffer on device. Defaults to an automatically chosen value.





## Value

A dataset






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
`dataset_prefetch()`,
`dataset_reduce()`,
`dataset_repeat()`,
`dataset_shuffle_and_repeat()`,
`dataset_shuffle()`,
`dataset_skip()`,
`dataset_take_while()`,
`dataset_take()`,
`dataset_window()`




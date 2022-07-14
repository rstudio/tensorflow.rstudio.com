# dataset_flat_map


Maps map_func across this dataset and flattens the result.




## Description

Maps map_func across this dataset and flattens the result.





## Usage
```r
dataset_flat_map(dataset, map_func)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | A dataset
map_func | A function mapping a nested structure of tensors (having shapes and types defined by `output_shapes()` and `output_types()` to a dataset.





## Value

A dataset






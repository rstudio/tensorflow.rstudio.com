# dataset_enumerate


Enumerates the elements of this dataset




## Description

Enumerates the elements of this dataset





## Usage
```r
dataset_enumerate(dataset, start = 0L)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | A tensorflow dataset
start | An integer (coerced to a ``tf$int64`` scalar ``tf.Tensor``), representing the start value for enumeration.




## Details

It is similar to python's ``enumerate``, this transforms a sequence of
elements into a sequence of ``list(index, element)``, where index is an integer
that indicates the position of the element in the sequence.






## Examples

```r

dataset <- tensor_slices_dataset(100:103) %>%
  dataset_enumerate()

iterator <- reticulate::as_iterator(dataset)
reticulate::iter_next(iterator) # list(0, 100)
reticulate::iter_next(iterator) # list(1, 101)
reticulate::iter_next(iterator) # list(2, 102)
reticulate::iter_next(iterator) # list(3, 103)
reticulate::iter_next(iterator) # NULL (iterator exhausted)
reticulate::iter_next(iterator) # NULL (iterator exhausted)

```





# length.tf_dataset


Get Dataset length




## Description

Returns the length of the dataset.





## Usage

lengthtf_dataset(x)

lengthtensorflow.python.data.ops.dataset_ops.DatasetV2(x)





## Arguments


Argument      |Description
------------- |----------------
x | a ``tf.data.Dataset`` object.





## Value

Either ``Inf`` if the dataset is infinite, ``NA`` if the dataset length
is unknown, or an R numeric if it is known.





## Examples

```r

range_dataset(0, 42) %>% length()
# 42

range_dataset(0, 42) %>% dataset_repeat() %>% length()
# Inf

range_dataset(0, 42) %>% dataset_repeat() %>%
  dataset_filter(function(x) TRUE) %>% length()
# NA

```





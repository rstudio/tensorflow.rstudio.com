# layer_input_from_dataset


Creates a list of inputs from a dataset




## Description

Create a list ok Keras input layers that can be used together
with `keras::layer_dense_features()`.





## Usage
```r
layer_input_from_dataset(dataset)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | a TensorFlow dataset or a data.frame





## Value

a list of Keras input layers





## Examples

```r

library(tfdatasets)
data(hearts)
hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32)

# use the formula interface
spec <- feature_spec(hearts, target ~ age + slope) %>%
  step_numeric_column(age, slope) %>%
  step_bucketized_column(age, boundaries = c(10, 20, 30))

spec <- fit(spec)
dataset <- hearts %>% dataset_use_spec(spec)

input <- layer_input_from_dataset(dataset)

```






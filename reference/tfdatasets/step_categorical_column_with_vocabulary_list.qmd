# step_categorical_column_with_vocabulary_list


Creates a categorical column specification




## Description

Creates a categorical column specification





## Usage
```r
step_categorical_column_with_vocabulary_list(
  spec,
  ...,
  vocabulary_list = NULL,
  dtype = NULL,
  default_value = -1L,
  num_oov_buckets = 0L
)
```




## Arguments


Argument      |Description
------------- |----------------
spec | A feature specification created with `feature_spec()`.
... | Comma separated list of variable names to apply the step. selectors can also be used.
vocabulary_list | An ordered iterable defining the vocabulary. Each feature is mapped to the index of its value (if present) in vocabulary_list. Must be castable to ``dtype``. If ``NULL`` the vocabulary will be defined as all unique values in the dataset provided when fitting the specification.
dtype | The type of features. Only string and integer types are supported. If ``NULL``, it will be inferred from ``vocabulary_list``.
default_value | The integer ID value to return for out-of-vocabulary feature values, defaults to ``-1``. This can not be specified with a positive num_oov_buckets.
num_oov_buckets | Non-negative integer, the number of out-of-vocabulary buckets. All out-of-vocabulary inputs will be assigned IDs in the range [lenght(vocabulary_list), length(vocabulary_list)+num_oov_buckets) based on a hash of the input value. A positive num_oov_buckets can not be specified with default_value.





## Value

a ``FeatureSpec`` object.





## Examples

```r

library(tfdatasets)
data(hearts)
hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32)

# use the formula interface
spec <- feature_spec(hearts, target ~ thal) %>%
  step_categorical_column_with_vocabulary_list(thal)

spec_fit <- fit(spec)
final_dataset <- hearts %>% dataset_use_spec(spec_fit)

```






## See Also

steps for a complete list of allowed steps.

Other Feature Spec Functions: 
`dataset_use_spec()`,
`feature_spec()`,
`fit.FeatureSpec()`,
`step_bucketized_column()`,
`step_categorical_column_with_hash_bucket()`,
`step_categorical_column_with_identity()`,
`step_categorical_column_with_vocabulary_file()`,
`step_crossed_column()`,
`step_embedding_column()`,
`step_indicator_column()`,
`step_numeric_column()`,
`step_remove_column()`,
`step_shared_embeddings_column()`,
`steps`




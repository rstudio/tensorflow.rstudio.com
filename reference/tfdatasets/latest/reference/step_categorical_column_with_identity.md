# step_categorical_column_with_identity


Create a categorical column with identity




## Description

Use this when your inputs are integers in the range [0-num_buckets).





## Usage
```r
step_categorical_column_with_identity(
  spec,
  ...,
  num_buckets,
  default_value = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
spec | A feature specification created with `feature_spec()`.
... | Comma separated list of variable names to apply the step. selectors can also be used.
num_buckets | Range of inputs and outputs is [0, num_buckets).
default_value | If ``NULL``, this column's graph operations will fail for out-of-range inputs. Otherwise, this value must be in the range [0, num_buckets), and will replace inputs in that range.





## Value

a ``FeatureSpec`` object.





## Examples

```r

library(tfdatasets)
data(hearts)

hearts$thal <- as.integer(as.factor(hearts$thal)) - 1L

hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32)

# use the formula interface
spec <- feature_spec(hearts, target ~ thal) %>%
  step_categorical_column_with_identity(thal, num_buckets = 5)

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
`step_categorical_column_with_vocabulary_file()`,
`step_categorical_column_with_vocabulary_list()`,
`step_crossed_column()`,
`step_embedding_column()`,
`step_indicator_column()`,
`step_numeric_column()`,
`step_remove_column()`,
`step_shared_embeddings_column()`,
`steps`




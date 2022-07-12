# step_indicator_column


Creates Indicator Columns




## Description

Use this step to create indicator columns from categorical columns.





## Usage
```r
step_indicator_column(spec, ...)
```




## Arguments


Argument      |Description
------------- |----------------
spec | A feature specification created with `feature_spec()`.
... | Comma separated list of variable names to apply the step. selectors can also be used.





## Value

a ``FeatureSpec`` object.





## Examples

```r

library(tfdatasets)
data(hearts)
file <- tempfile()
writeLines(unique(hearts$thal), file)
hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32)

# use the formula interface
spec <- feature_spec(hearts, target ~ thal) %>%
  step_categorical_column_with_vocabulary_list(thal) %>%
  step_indicator_column(thal)
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
`step_categorical_column_with_vocabulary_list()`,
`step_crossed_column()`,
`step_embedding_column()`,
`step_numeric_column()`,
`step_remove_column()`,
`step_shared_embeddings_column()`,
`steps`




# fit.FeatureSpec


Fits a feature specification.




## Description

This function will ``fit`` the specification. Depending
on the steps added to the specification it will compute
for example, the levels of categorical features, normalization
constants, etc.





## Usage

fitFeatureSpec(object, dataset = NULL, ...)





## Arguments


Argument      |Description
------------- |----------------
object | A feature specification created with `feature_spec()`.
dataset | (Optional) A TensorFlow dataset. If ``NULL`` it will use the dataset provided when initilializing the ``feature_spec``.
... | (unused)





## Value

a fitted ``FeatureSpec`` object.





## Examples

```r

library(tfdatasets)
data(hearts)
hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32)

# use the formula interface
spec <- feature_spec(hearts, target ~ age) %>%
  step_numeric_column(age)

spec_fit <- fit(spec)
spec_fit

```





## See Also



*  feature_spec() to initialize the feature specification.

*  dataset_use_spec() to create a tensorflow dataset prepared to modeling.

*  steps to a list of all implemented steps.


Other Feature Spec Functions: 
`dataset_use_spec()`,
`feature_spec()`,
`step_bucketized_column()`,
`step_categorical_column_with_hash_bucket()`,
`step_categorical_column_with_identity()`,
`step_categorical_column_with_vocabulary_file()`,
`step_categorical_column_with_vocabulary_list()`,
`step_crossed_column()`,
`step_embedding_column()`,
`step_indicator_column()`,
`step_numeric_column()`,
`step_remove_column()`,
`step_shared_embeddings_column()`,
`steps`




# feature_spec


Creates a feature specification.




## Description

Used to create initialize a feature columns specification.





## Usage
```r
feature_spec(dataset, x, y = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | A TensorFlow dataset.
x | Features to include can use `tidyselect::select_helpers()` or a ``formula``.
y | (Optional) The response variable. Can also be specified using a ``formula`` in the ``x`` argument.




## Details

After creating the ``feature_spec`` object you can add steps using the
``step`` functions.





## Value

a ``FeatureSpec`` object.





## Examples

```r

library(tfdatasets)
data(hearts)
hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32)

# use the formula interface
spec <- feature_spec(hearts, target ~ .)

# select using `tidyselect` helpers
spec <- feature_spec(hearts, x = c(thal, age), y = target)

```





## See Also



*  fit.FeatureSpec() to fit the FeatureSpec

*  dataset_use_spec() to create a tensorflow dataset prepared to modeling.

*  steps to a list of all implemented steps.


Other Feature Spec Functions: 
`dataset_use_spec()`,
`fit.FeatureSpec()`,
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




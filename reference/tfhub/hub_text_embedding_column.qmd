# hub_text_embedding_column


Module to construct a dense representation from a text feature.




## Description

This feature column can be used on an input feature whose values are strings of
arbitrary size.





## Usage
```r
hub_text_embedding_column(key, module_spec, trainable = FALSE)
```




## Arguments


Argument      |Description
------------- |----------------
key | A string or [feature_column](https://tensorflow.rstudio.com/tfestimators/articles/feature_columns.html) identifying the text feature.
module_spec | A string handle or a _ModuleSpec identifying the module.
trainable | Whether or not the Module is trainable. `FALSE` by default, meaning the pre-trained weights are frozen. This is different from the ordinary `tf.feature_column.embedding_column()`, but that one is intended for training from scratch.







# hub_image_embedding_column


Module to construct a dense 1-D representation from the pixels of images.




## Description

Module to construct a dense 1-D representation from the pixels of images.





## Usage
```r
hub_image_embedding_column(key, module_spec)
```




## Arguments


Argument      |Description
------------- |----------------
key | A string or [feature_column](https://tensorflow.rstudio.com/tfestimators/articles/feature_columns.html) identifying the text feature.
module_spec | A string handle or a _ModuleSpec identifying the module.




## Details

This feature column can be used on images, represented as float32 tensors of RGB pixel
data in the range [0,1].







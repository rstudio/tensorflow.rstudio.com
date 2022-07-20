# as_tf_dataset


Add the tf_dataset class to a dataset




## Description

Calling this function on a dataset adds the "tf_dataset" class to the dataset
object. All datasets returned by functions in the tfdatasets package
call this function on the dataset before returning it.





## Usage
```r
as_tf_dataset(dataset)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | A dataset





## Value

A dataset with class "tf_dataset"






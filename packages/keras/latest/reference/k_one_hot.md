# k_one_hot


Computes the one-hot representation of an integer tensor.




## Description

Computes the one-hot representation of an integer tensor.





## Usage
```r
k_one_hot(indices, num_classes)
```




## Arguments


Argument      |Description
------------- |----------------
indices | nD integer tensor of shape (batch_size, dim1, dim2, ... dim(n-1))
num_classes | Integer, number of classes to consider.





## Value

(n + 1)D one hot representation of the input with shape
(batch_size, dim1, dim2, ... dim(n-1), num_classes)






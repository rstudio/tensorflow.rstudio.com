# sparse_tensor_slices_dataset


Splits each rank-N ``tf$SparseTensor`` in this dataset row-wise.




## Description

Splits each rank-N ``tf$SparseTensor`` in this dataset row-wise.





## Usage
```r
sparse_tensor_slices_dataset(sparse_tensor)
```




## Arguments


Argument      |Description
------------- |----------------
sparse_tensor | A ``tf$SparseTensor``.





## Value

A dataset of rank-(N-1) sparse tensors.






## See Also

Other tensor datasets: 
`tensor_slices_dataset()`,
`tensors_dataset()`




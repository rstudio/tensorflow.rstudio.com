# [[<-.tensorflow.python.ops.tensor_array_ops.TensorArray


``TensorArray.write()``




## Description

``TensorArray.write()``





## Usage

[[tensorflow.python.ops.tensor_array_ops.TensorArray(ta, i, ..., name = NULL) <- value





## Arguments


Argument      |Description
------------- |----------------
ta | a tensorflow ``TensorArray``
i | something castable to an int32 scalar tensor. 0-based.
... | Error if anything is passed to ``...``
name | A scalar string, name of the op
value | The value to write.






## Examples

```r

ta <- tf$TensorArray(tf$float32, size = 5L)
for(i in 0:4)
  ta[[i]] <- i
ta$stack()

# You can use this to grow objects in graph mode
accuracies_log <- tf$TensorArray(tf$float32, size = 0L, dynamic_size=TRUE)
for(epoch in 0:4)
  accuracies_log[[epoch]] <- runif(1)
acc <- accuracies_log$stack()
acc

```





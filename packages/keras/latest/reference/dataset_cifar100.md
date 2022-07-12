# dataset_cifar100


CIFAR100 small image classification




## Description

Dataset of 50,000 32x32 color training images, labeled over 100 categories,
and 10,000 test images.





## Usage
```r
dataset_cifar100(label_mode = c("fine", "coarse"))
```




## Arguments


Argument      |Description
------------- |----------------
label_mode | one of "fine", "coarse".





## Value

Lists of training and test data: train$x, train$y, test$x, test$y.

The ``x`` data is an array of RGB image data with shape (num_samples, 3, 32, 32).

The ``y`` data is an array of category labels with shape (num_samples).






## See Also

Other datasets: 
`dataset_boston_housing()`,
`dataset_cifar10()`,
`dataset_fashion_mnist()`,
`dataset_imdb()`,
`dataset_mnist()`,
`dataset_reuters()`




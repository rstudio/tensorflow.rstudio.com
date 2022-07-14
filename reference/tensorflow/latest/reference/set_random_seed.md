# set_random_seed


Set random seed for TensorFlow




## Description

Sets all random seeds needed to make TensorFlow code reproducible.





## Usage
```r
set_random_seed(seed, disable_gpu = TRUE)
```




## Arguments


Argument      |Description
------------- |----------------
seed | A single value, interpreted as an integer
disable_gpu | ``TRUE`` to disable GPU execution (see Parallelism below).




## Details

This function should be used instead of `use_session_with_seed()` if
you are using TensorFlow >= 2.0, as the concept of ``session`` doesn't
really make sense anymore.

This functions sets:


*  The R random seed with set.seed().

*  The python and Numpy seeds via (reticulate::py_set_seed()).

*  The TensorFlow seed with (`tf$random$set_seed()`)


It also optionally disables the GPU execution as this is a potential
source of non-reproducibility.







# shape


Create a ``tf.TensorShape`` object




## Description

Create a ``tf.TensorShape`` object





## Usage
```r
shape(..., dims = list(...))
```




## Arguments


Argument      |Description
------------- |----------------
... | Tensor dimensions as integers or ``NULL`` for an unknown dimensions. ``NA`` and ``-1`` are synonyms for ``NULL``.
dims | Tensor dimensions as a vector.






## Examples

```r


# --- construct ---
shape()       # tf.TensorShape()       # scalar
shape(NULL)   # tf.TensorShape([None]) # 1-D array of unknown length
shape(NA)     # tf.TensorShape([None]) # 1-D array of unknown length, NA is a synonym for NULL

shape(dims = NULL) # TensorShape(None)    # Unknown rank, unknown size
shape(3, 4)        # TensorShape([3, 4])  # 2-D array (matrix) with 3 rows, 4 columns
shape(NA, 4)           # TensorShape([None, 4])  # 2-D array (matrix) with unknown rows, 4 columns
shape(dims = c(NA, 4)) # TensorShape([None, 4]) # same as above; bypass ... and pass dims directly

# --- inspect ---
length(shape(dims = NULL)) # NA_integer_
length(shape(1,2,3,NA))    # 4L

# ---convert ---
x <- shape(dims = list(3L, 5L))
as.list(x)     # list(3L, 5L)
as.integer(x)  # c(3L, 5L)
as.numeric(x)  # c(3, 5)
as.double(x)   # c(3, 5) # alias for as.numeric
as_tensor(x)   # tf.Tensor([3 5], shape=(2,), dtype=int32)

# convert partially undefined shapes
x <- shape(NA, 3)
as.list(x)     # list(NULL, 3L)
as.integer(x)  # c(NA, 3L)
as_tensor(x)   # tf.Tensor([-1  3], shape=(2,), dtype=int32) # unspecified dims default is -1

# as_tensor() converts undefined dimensions to -1, which is useful for
# tf functions that only accept tensors for shapes, e.g,
tf$reshape(tf$zeros(shape(8)),
           as_tensor(shape(NA, 4)))
# tf.Tensor([[0. 0. 0. 0.]
#            [0. 0. 0. 0.]], shape=(2, 4), dtype=float32)

# converting fully unknown shapes raises an error
try(as.list(shape(dims = NULL))) # ValueError: as_list() is not defined on an unknown TensorShape.
# test for rank first if this a concern:
as.list_or_null <- function(x) if(is.na(length(x))) NULL else as.list(x)
as.list_or_null(shape(dims = NULL))


# --- compare ---
# Fully known shapes return TRUE if and only if each element is equal
shape(3, 4) == shape(3, 4) # TRUE
shape(3, 4) == shape(4, 4) # FALSE

# two unknown dimensions are treated as equal
shape(NA, 4) == shape(NA, 4) # TRUE
shape(NA, 4) == shape(3, 4)  # FALSE

# Two unknown shapes, return TRUE
shape(dims = NULL) == shape(dims = NULL) # TRUE

# Comparing an unknown shape to a partially or fully defined shape returns FALSE
shape(dims = NULL) == shape(NULL) # FALSE
shape(dims = NULL) == shape(4)    # FALSE


# --- extract or replace ---
# regular R-list semantics for `[`, `[[`, `[<-`, `[[<-`
x <- shape(1, 2, 3)
x[1]       # TensorShape([1])
x[[1]]     # 1L
x[2:3]     # TensorShape([2, 3])
x[-1]      # TensorShape([2, 3])

x[1] <- 11        ; x # TensorShape([11, 2, 3])
x[1] <- shape(11) ; x # TensorShape([11, 2, 3])
x[1] <- list(11)  ; x # TensorShape([11, 2, 3])

x[[1]] <- 22            ; x # TensorShape([22, 2, 3])
x[1:2] <- c(NA, 99)     ; x # TensorShape([None, 99, 3])
x[1:2] <- shape(33, 44) ; x # TensorShape([33, 44, 3])

# --- concatenate ---
c(shape(1), shape(2, 3), shape(4, NA)) # TensorShape([1, 2, 3, 4, None])

# --- merge ---
merge(shape(NA, 2),
      shape(1 , 2)) # TensorShape([1, 2])

try(merge(shape(2, 2),
          shape(1, 2))) # ValueError: Shapes (2, 2) and (1, 2) are not compatible

rm(x) # cleanup

```





## See Also

https://www.tensorflow.org/api_docs/python/tf/TensorShape



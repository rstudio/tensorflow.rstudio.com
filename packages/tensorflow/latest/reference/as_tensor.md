# as_tensor


as_tensor




## Description

Coerce objects to tensorflow tensors (potentially of a specific dtype or shape). The
provided default methods will call
https://www.tensorflow.org/api_docs/python/tf/convert_to_tensortf$convert_to_tensor. Depending on arguments supplied it may also call some combination of


*  https://www.tensorflow.org/api_docs/python/tf/dtypes/saturate_castlist("tf$saturate_cast") or
https://www.tensorflow.org/api_docs/python/tf/castlist("tf$cast")

*  https://www.tensorflow.org/api_docs/python/tf/filllist("tf$fill") or
https://www.tensorflow.org/api_docs/python/tf/reshapelist("tf$reshape")






## Usage

as_tensor(x, dtype = NULL, ..., name = NULL)

as_tensordefault(x, dtype = NULL, ..., shape = NULL, name = NULL)

as_tensordouble(x, dtype = NULL, ..., name = NULL)





## Arguments


Argument      |Description
------------- |----------------
x | object to convert
dtype | ``NULL``, a tensorflow dtype (``tf$int32``), or something coercible to one (e.g. a string ``"int32"``)
...,  | ignored
name | ``NULL`` or a string. Useful for debugging in graph mode, ignored while in eager mode.
shape | an integer vector, tensor, or ``tf.TensorShape``. Can contain up to 1 unspecified dimension, encoded as a ``-1`` or ``NA``. This will reshape ``x`` using row-major (C-style) semantics. It will prefer reshaping using non-graph operations if possible, but will otherwise invoke ``tf$reshape()``. If ``x`` is a scalar and the requested ``shape`` is fully defined or a tensor, the value of ``x`` will be recycled to fill a tensor of the requested shape (it will dispatch to ``tf$fill()``).





## Value

a tensorflow tensor





## Examples

```r

as_tensor(42, "int32")
as_tensor(as_tensor(42))

```





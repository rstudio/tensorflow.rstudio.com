# loss-functions


Loss functions




## Description

Loss functions





## Usage
```r
loss_binary_crossentropy(
  y_true,
  y_pred,
  from_logits = FALSE,
  label_smoothing = 0,
  axis = -1L,
  ...,
  reduction = "auto",
  name = "binary_crossentropy"
)

loss_categorical_crossentropy(
  y_true,
  y_pred,
  from_logits = FALSE,
  label_smoothing = 0L,
  axis = -1L,
  ...,
  reduction = "auto",
  name = "categorical_crossentropy"
)

loss_categorical_hinge(
  y_true,
  y_pred,
  ...,
  reduction = "auto",
  name = "categorical_hinge"
)

loss_cosine_similarity(
  y_true,
  y_pred,
  axis = -1L,
  ...,
  reduction = "auto",
  name = "cosine_similarity"
)

loss_hinge(y_true, y_pred, ..., reduction = "auto", name = "hinge")

loss_huber(
  y_true,
  y_pred,
  delta = 1,
  ...,
  reduction = "auto",
  name = "huber_loss"
)

loss_kullback_leibler_divergence(
  y_true,
  y_pred,
  ...,
  reduction = "auto",
  name = "kl_divergence"
)

loss_kl_divergence(
  y_true,
  y_pred,
  ...,
  reduction = "auto",
  name = "kl_divergence"
)

loss_logcosh(y_true, y_pred, ..., reduction = "auto", name = "log_cosh")

loss_mean_absolute_error(
  y_true,
  y_pred,
  ...,
  reduction = "auto",
  name = "mean_absolute_error"
)

loss_mean_absolute_percentage_error(
  y_true,
  y_pred,
  ...,
  reduction = "auto",
  name = "mean_absolute_percentage_error"
)

loss_mean_squared_error(
  y_true,
  y_pred,
  ...,
  reduction = "auto",
  name = "mean_squared_error"
)

loss_mean_squared_logarithmic_error(
  y_true,
  y_pred,
  ...,
  reduction = "auto",
  name = "mean_squared_logarithmic_error"
)

loss_poisson(y_true, y_pred, ..., reduction = "auto", name = "poisson")

loss_sparse_categorical_crossentropy(
  y_true,
  y_pred,
  from_logits = FALSE,
  axis = -1L,
  ...,
  reduction = "auto",
  name = "sparse_categorical_crossentropy"
)

loss_squared_hinge(
  y_true,
  y_pred,
  ...,
  reduction = "auto",
  name = "squared_hinge"
)
```




## Arguments


Argument      |Description
------------- |----------------
y_true | Ground truth values. shape = [batch_size, d1, .. dN].
y_pred | The predicted values. shape = [batch_size, d1, .. dN]. (Tensor of the same shape as ``y_true``)
from_logits | Whether ``y_pred`` is expected to be a logits tensor. By default we assume that ``y_pred`` encodes a probability distribution.
label_smoothing | Float in [0, 1]. If > 0 then smooth the labels. For example, if ``0.1``, use ``0.1 / num_classes`` for non-target labels and ``0.9 + 0.1 / num_classes`` for target labels.
axis | The axis along which to compute crossentropy (the features axis). Axis is 1-based (e.g, first axis is ``axis=1``). Defaults to ``-1`` (the last axis).
... | Additional arguments passed on to the Python callable (for forward and backwards compatibility).
reduction | Only applicable if ``y_true`` and ``y_pred`` are missing. Type of ``keras$losses$Reduction`` to apply to loss. Default value is ``AUTO``. ``AUTO`` indicates that the reduction option will be determined by the usage context. For almost all cases this defaults to ``SUM_OVER_BATCH_SIZE``. When used with ``tf$distribute$Strategy``, outside of built-in training loops such as ``compile`` and ``fit``, using ``AUTO`` or ``SUM_OVER_BATCH_SIZE`` will raise an error. Please see this custom training https://www.tensorflow.org/tutorials/distribute/custom_trainingtutorial for more details.
name | Only applicable if ``y_true`` and ``y_pred`` are missing. Optional name for the Loss instance.
delta | A float, the point where the Huber loss function changes from a quadratic to linear.




## Details

Loss functions for model training. These are typically supplied in
the ``loss`` parameter of the `compile.keras.engine.training.Model()`
function.





## Value

If called with ``y_true`` and ``y_pred``, then the corresponding loss is
evaluated and the result returned (as a tensor). Alternatively, if ``y_true``
and ``y_pred`` are missing, then a callable is returned that will compute the
loss function and, by default, reduce the loss to a scalar tensor; see the
``reduction`` parameter for details. (The callable is a typically a class
instance that inherits from ``keras$losses$Loss``).






## See Also

`compile.keras.engine.training.Model()`,
`loss_binary_crossentropy()`




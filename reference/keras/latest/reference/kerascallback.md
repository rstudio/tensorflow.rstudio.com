# KerasCallback


(Deprecated) Base R6 class for Keras callbacks




## Description

New custom callbacks implemented as R6 classes are encouraged to inherit from
``keras$callbacks$Callback`` directly.






## Details

The ``logs`` named list that callback methods take as argument will
contain keys for quantities relevant to the current batch or epoch.

Currently, the ``fit.keras.engine.training.Model()`` method for sequential
models will include the following quantities in the ``logs`` that
it passes to its callbacks:


*  `on_epoch_end`: logs include `acc` and `loss`, and optionally include `val_loss` (if validation is enabled in `fit`), and `val_acc` (if validation and accuracy monitoring are enabled).

*  `on_batch_begin`: logs include `size`, the number of samples in the current batch.

*  `on_batch_end`: logs include `loss`, and optionally `acc` (if accuracy monitoring is enabled).






## Value

KerasCallback.





## Examples

```r

library(keras)

LossHistory <- R6::R6Class("LossHistory",
  inherit = KerasCallback,

  public = list(

    losses = NULL,

    on_batch_end = function(batch, logs = list()) {
      self$losses <- c(self$losses, logs[["loss"]])
    }
  )
)

```





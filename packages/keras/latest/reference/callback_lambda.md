# callback_lambda


Create a custom callback




## Description

This callback is constructed with anonymous functions that will be called at
the appropriate time. Note that the callbacks expects positional arguments,
as:





## Usage
```r
callback_lambda(
  on_epoch_begin = NULL,
  on_epoch_end = NULL,
  on_batch_begin = NULL,
  on_batch_end = NULL,
  on_train_batch_begin = NULL,
  on_train_batch_end = NULL,
  on_train_begin = NULL,
  on_train_end = NULL,
  on_predict_batch_begin = NULL,
  on_predict_batch_end = NULL,
  on_predict_begin = NULL,
  on_predict_end = NULL,
  on_test_batch_begin = NULL,
  on_test_batch_end = NULL,
  on_test_begin = NULL,
  on_test_end = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
on_epoch_begin | called at the beginning of every epoch.
on_epoch_end | called at the end of every epoch.
on_batch_begin | called at the beginning of every training batch.
on_batch_end | called at the end of every training batch.
on_train_batch_begin | called at the beginning of every batch.
on_train_batch_end | called at the end of every batch.
on_train_begin | called at the beginning of model training.
on_train_end | called at the end of model training.
on_predict_batch_begin | called at the beginning of a batch in predict methods.
on_predict_batch_end | called at the end of a batch in predict methods.
on_predict_begin | called at the beginning of prediction.
on_predict_end | called at the end of prediction.
on_test_batch_begin | called at the beginning of a batch in evaluate methods. Also called at the beginning of a validation batch in the fit methods, if validation data is provided.
on_test_batch_end | called at the end of a batch in evaluate methods. Also called at the end of a validation batch in the fit methods, if validation data is provided.
on_test_begin | called at the beginning of evaluation or validation.
on_test_end | called at the end of evaluation or validation.




## Details



*  `on_epoch_begin` and `on_epoch_end` expect two positional arguments: `epoch`, `logs`

*  on_batch_*, on_train_batch_*, on_predict_batch_* and on_test_batch_*, expect
two positional arguments: `batch`, `logs`

*  on_train_*, on_test_* and on_predict_* expect one positional argument: `logs`








## See Also

Other callbacks: 
`callback_csv_logger()`,
`callback_early_stopping()`,
`callback_learning_rate_scheduler()`,
`callback_model_checkpoint()`,
`callback_progbar_logger()`,
`callback_reduce_lr_on_plateau()`,
`callback_remote_monitor()`,
`callback_tensorboard()`,
`callback_terminate_on_naan()`




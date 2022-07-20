# callback_model_checkpoint


Save the model after every epoch.




## Description

``filepath`` can contain named formatting options, which will be filled the
value of ``epoch`` and keys in ``logs`` (passed in ``on_epoch_end``). For example:
if ``filepath`` is weights.{epoch:02d}-{val_loss:.2f}.hdf5, then the model
checkpoints will be saved with the epoch number and the validation loss in
the filename.





## Usage
```r
callback_model_checkpoint(
  filepath,
  monitor = "val_loss",
  verbose = 0,
  save_best_only = FALSE,
  save_weights_only = FALSE,
  mode = c("auto", "min", "max"),
  period = NULL,
  save_freq = "epoch"
)
```




## Arguments


Argument      |Description
------------- |----------------
filepath | string, path to save the model file.
monitor | quantity to monitor.
verbose | verbosity mode, 0 or 1.
save_best_only | if ``save_best_only=TRUE``, the latest best model according to the quantity monitored will not be overwritten.
save_weights_only | if ``TRUE``, then only the model's weights will be saved (``save_model_weights_hdf5(filepath)``), else the full model is saved (``save_model_hdf5(filepath)``).
mode | one of "auto", "min", "max". If ``save_best_only=TRUE``, the decision to overwrite the current save file is made based on either the maximization or the minimization of the monitored quantity. For val_acc, this should be max, for val_loss this should be min, etc. In auto mode, the direction is automatically inferred from the name of the monitored quantity.
period | Interval (number of epochs) between checkpoints.
save_freq | ``'epoch'`` or integer. When using 'epoch', the callback saves the model after each epoch. When using integer, the callback saves the model at end of a batch at which this many samples have been seen since last saving. Note that if the saving isn't aligned to epochs, the monitored metric may potentially be less reliable (it could reflect as little as 1 batch, since the metrics get reset every epoch). Defaults to ``'epoch'``







## See Also

Other callbacks: 
`callback_csv_logger()`,
`callback_early_stopping()`,
`callback_lambda()`,
`callback_learning_rate_scheduler()`,
`callback_progbar_logger()`,
`callback_reduce_lr_on_plateau()`,
`callback_remote_monitor()`,
`callback_tensorboard()`,
`callback_terminate_on_naan()`




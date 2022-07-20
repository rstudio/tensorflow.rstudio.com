# callback_early_stopping


Stop training when a monitored quantity has stopped improving.




## Description

Stop training when a monitored quantity has stopped improving.





## Usage
```r
callback_early_stopping(
  monitor = "val_loss",
  min_delta = 0,
  patience = 0,
  verbose = 0,
  mode = c("auto", "min", "max"),
  baseline = NULL,
  restore_best_weights = FALSE
)
```




## Arguments


Argument      |Description
------------- |----------------
monitor | quantity to be monitored.
min_delta | minimum change in the monitored quantity to qualify as an improvement, i.e. an absolute change of less than min_delta, will count as no improvement.
patience | number of epochs with no improvement after which training will be stopped.
verbose | verbosity mode, 0 or 1.
mode | one of "auto", "min", "max". In ``min`` mode, training will stop when the quantity monitored has stopped decreasing; in ``max`` mode it will stop when the quantity monitored has stopped increasing; in ``auto`` mode, the direction is automatically inferred from the name of the monitored quantity.
baseline | Baseline value for the monitored quantity to reach. Training will stop if the model doesn't show improvement over the baseline.
restore_best_weights | Whether to restore model weights from the epoch with the best value of the monitored quantity. If ``FALSE``, the model weights obtained at the last step of training are used.







## See Also

Other callbacks: 
`callback_csv_logger()`,
`callback_lambda()`,
`callback_learning_rate_scheduler()`,
`callback_model_checkpoint()`,
`callback_progbar_logger()`,
`callback_reduce_lr_on_plateau()`,
`callback_remote_monitor()`,
`callback_tensorboard()`,
`callback_terminate_on_naan()`




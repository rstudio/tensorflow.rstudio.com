# callback_progbar_logger


Callback that prints metrics to stdout.




## Description

Callback that prints metrics to stdout.





## Usage
```r
callback_progbar_logger(count_mode = "samples", stateful_metrics = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
count_mode | One of "steps" or "samples". Whether the progress bar should count samples seens or steps (batches) seen.
stateful_metrics | List of metric names that should not be averaged onver an epoch. Metrics in this list will be logged as-is in ``on_epoch_end``. All others will be averaged in ``on_epoch_end``.







## See Also

Other callbacks: 
`callback_csv_logger()`,
`callback_early_stopping()`,
`callback_lambda()`,
`callback_learning_rate_scheduler()`,
`callback_model_checkpoint()`,
`callback_reduce_lr_on_plateau()`,
`callback_remote_monitor()`,
`callback_tensorboard()`,
`callback_terminate_on_naan()`




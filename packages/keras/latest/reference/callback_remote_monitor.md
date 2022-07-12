# callback_remote_monitor


Callback used to stream events to a server.




## Description

Callback used to stream events to a server.





## Usage
```r
callback_remote_monitor(
  root = "https://localhost:9000",
  path = "/publish/epoch/end/",
  field = "data",
  headers = NULL,
  send_as_json = FALSE
)
```




## Arguments


Argument      |Description
------------- |----------------
root | root url of the target server.
path | path relative to root to which the events will be sent.
field | JSON field under which the data will be stored.
headers | Optional named list of custom HTTP headers. Defaults to: list(Accept = "application/json", Content-Type = "application/json")
send_as_json | Whether the request should be sent as application/json.




## Details

Events are sent to ``root + '/publish/epoch/end/'`` by default. Calls
are HTTP POST, with a ``data`` argument which is a JSON-encoded dictionary
of event data. If send_as_json is set to True, the content type of the
request will be application/json. Otherwise the serialized JSON will be
send within a form







## See Also

Other callbacks: 
`callback_csv_logger()`,
`callback_early_stopping()`,
`callback_lambda()`,
`callback_learning_rate_scheduler()`,
`callback_model_checkpoint()`,
`callback_progbar_logger()`,
`callback_reduce_lr_on_plateau()`,
`callback_tensorboard()`,
`callback_terminate_on_naan()`




# compile.keras.engine.training.Model


Configure a Keras model for training




## Description

Configure a Keras model for training





## Usage

compilekeras.engine.training.Model(
  object,
  optimizer = NULL,
  loss = NULL,
  metrics = NULL,
  loss_weights = NULL,
  weighted_metrics = NULL,
  run_eagerly = NULL,
  steps_per_execution = NULL,
  ...,
  target_tensors = NULL,
  sample_weight_mode = NULL
)





## Arguments


Argument      |Description
------------- |----------------
object | Model object to compile.
optimizer | String (name of optimizer) or optimizer instance. For most models, this defaults to ``"rmsprop"``
loss | String (name of objective function), objective function or a ``keras$losses$Loss`` subclass instance. An objective function is any callable with the signature ``loss = fn(y_true, y_pred)``, where y_true = ground truth values with shape = [batch_size, d0, .. dN], except sparse loss functions such as sparse categorical crossentropy where shape = [batch_size, d0, .. dN-1]. y_pred = predicted values with shape = [batch_size, d0, .. dN]. It returns a weighted loss float tensor. If a custom ``Loss`` instance is used and reduction is set to ``NULL``, return value has the shape [batch_size, d0, .. dN-1] i.e. per-sample or per-timestep loss values; otherwise, it is a scalar. If the model has multiple outputs, you can use a different loss on each output by passing a dictionary or a list of losses. The loss value that will be minimized by the model will then be the sum of all individual losses, unless ``loss_weights`` is specified.
metrics | List of metrics to be evaluated by the model during training and testing. Each of this can be a string (name of a built-in function), function or a ``keras$metrics$Metric`` class instance. See ``?tf$keras$metrics``. Typically you will use ``metrics=list('accuracy')``. A function is any callable with the signature ``result = fn(y_true, y_pred)``. To specify different metrics for different outputs of a multi-output model, you could also pass a dictionary, such as ``metrics=list(output_a = 'accuracy', output_b = c('accuracy', 'mse'))``. You can also pass a list to specify a metric or a list of metrics for each output, such as ``metrics=list(list('accuracy'), list('accuracy', 'mse'))`` or ``metrics=list('accuracy', c('accuracy', 'mse'))``. When you pass the strings ``'accuracy'`` or ``'acc'``, this is converted to one of ``tf.keras.metrics.BinaryAccuracy``, ``tf.keras.metrics.CategoricalAccuracy``, ``tf.keras.metrics.SparseCategoricalAccuracy`` based on the loss function used and the model output shape. A similar conversion is done for the strings ``'crossentropy'`` and ``'ce'``.
loss_weights | Optional list, dictionary, or named vector specifying scalar numeric coefficients to weight the loss contributions of different model outputs. The loss value that will be minimized by the model will then be the weighted sum of all individual losses, weighted by the ``loss_weights`` coefficients. If a list, it is expected to have a 1:1 mapping to the model's outputs. If a dict, it is expected to map output names (strings) to scalar coefficients.
weighted_metrics | List of metrics to be evaluated and weighted by ``sample_weight`` or ``class_weight`` during training and testing.
run_eagerly | Bool. Defaults to ``FALSE``. If ``TRUE``, this Model's logic will not be wrapped in a ``tf.function``. Recommended to leave this as ``NULL`` unless your Model cannot be run inside a ``tf.function``. ``run_eagerly=True`` is not supported when using ``tf.distribute.experimental.ParameterServerStrategy``. If the model's logic uses tensors in R control flow expressions like ``if`` and ``for``, the model is still traceable with ``tf.function``, but you will have to enter a ``tfautograph::autograph({})`` directly.
steps_per_execution | Int. Defaults to 1. The number of batches to run during each ``tf.function`` call. Running multiple batches inside a single ``tf.function`` call can greatly improve performance on TPUs or small models with a large Python/R overhead. At most, one full epoch will be run each execution. If a number larger than the size of the epoch is passed, the execution will be truncated to the size of the epoch. Note that if ``steps_per_execution`` is set to ``N``, ``Callback.on_batch_begin`` and ``Callback.on_batch_end`` methods will only be called every ``N`` batches (i.e. before/after each ``tf.function`` execution).
... | Arguments supported for backwards compatibility only.
target_tensors | By default, Keras will create a placeholder for the model's target, which will be fed with the target data during training. If instead you would like to use your own target tensor (in turn, Keras will not expect external data for these targets at training time), you can specify them via the ``target_tensors`` argument. It should be a single tensor (for a single-output sequential model).
sample_weight_mode | If you need to do timestep-wise sample weighting (2D weights), set this to "temporal". ``NULL`` defaults to sample-wise weights (1D). If the model has multiple outputs, you can use a different ``sample_weight_mode`` on each output by passing a list of modes.







## See Also

Other model functions: 
`evaluate.keras.engine.training.Model()`,
`evaluate_generator()`,
`fit.keras.engine.training.Model()`,
`fit_generator()`,
`get_config()`,
`get_layer()`,
`keras_model_sequential()`,
`keras_model()`,
`multi_gpu_model()`,
`pop_layer()`,
`predict.keras.engine.training.Model()`,
`predict_generator()`,
`predict_on_batch()`,
`predict_proba()`,
`summary.keras.engine.training.Model()`,
`train_on_batch()`




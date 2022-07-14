# fit.keras.engine.training.Model


Train a Keras model




## Description

Trains the model for a fixed number of epochs (iterations on a dataset).





## Usage

fitkeras.engine.training.Model(
  object,
  x = NULL,
  y = NULL,
  batch_size = NULL,
  epochs = 10,
  verbose = getOption("keras.fit_verbose", default = "auto"),
  callbacks = NULL,
  view_metrics = getOption("keras.view_metrics", default = "auto"),
  validation_split = 0,
  validation_data = NULL,
  shuffle = TRUE,
  class_weight = NULL,
  sample_weight = NULL,
  initial_epoch = 0,
  steps_per_epoch = NULL,
  validation_steps = NULL,
  ...
)





## Arguments


Argument      |Description
------------- |----------------
object | Model to train.
x | Vector, matrix, or array of training data (or list if the model has multiple inputs). If all inputs in the model are named, you can also pass a list mapping input names to data. ``x`` can be ``NULL`` (default) if feeding from framework-native tensors (e.g. TensorFlow data tensors). You can also pass a ``tfdataset`` or a generator returning a list with (inputs, targets) or (inputs, targets, sample_weights).
y | Vector, matrix, or array of target (label) data (or list if the model has multiple outputs). If all outputs in the model are named, you can also pass a list mapping output names to data. ``y`` can be ``NULL`` (default) if feeding from framework-native tensors (e.g. TensorFlow data tensors).
batch_size | Integer or ``NULL``. Number of samples per gradient update. If unspecified, ``batch_size`` will default to 32.
epochs | Number of epochs to train the model. Note that in conjunction with ``initial_epoch``, ``epochs`` is to be understood as "final epoch". The model is not trained for a number of iterations given by ``epochs``, but merely until the epoch of index ``epochs`` is reached.
verbose | Verbosity mode (0 = silent, 1 = progress bar, 2 = one line per epoch).
callbacks | List of callbacks to be called during training.
view_metrics | View realtime plot of training metrics (by epoch). The default (``"auto"``) will display the plot when running within RStudio, ``metrics`` were specified during model `compile()`, ``epochs > 1`` and ``verbose > 0``. Use the global ``keras.view_metrics`` option to establish a different default.
validation_split | Float between 0 and 1. Fraction of the training data to be used as validation data. The model will set apart this fraction of the training data, will not train on it, and will evaluate the loss and any model metrics on this data at the end of each epoch. The validation data is selected from the last samples in the ``x`` and ``y`` data provided, before shuffling.
validation_data | Data on which to evaluate the loss and any model metrics at the end of each epoch. The model will not be trained on this data. This could be a list (x_val, y_val) or a list (x_val, y_val, val_sample_weights). ``validation_data`` will override ``validation_split``.
shuffle | shuffle: Logical (whether to shuffle the training data before each epoch) or string (for "batch"). "batch" is a special option for dealing with the limitations of HDF5 data; it shuffles in batch-sized chunks. Has no effect when ``steps_per_epoch`` is not ``NULL``.
class_weight | Optional named list mapping indices (integers) to a weight (float) value, used for weighting the loss function (during training only). This can be useful to tell the model to "pay more attention" to samples from an under-represented class.
sample_weight | Optional array of the same length as x, containing weights to apply to the model's loss for each sample. In the case of temporal data, you can pass a 2D array with shape (samples, sequence_length), to apply a different weight to every timestep of every sample. In this case you should make sure to specify ``sample_weight_mode="temporal"`` in `compile()`.
initial_epoch | Integer, Epoch at which to start training (useful for resuming a previous training run).
steps_per_epoch | Total number of steps (batches of samples) before declaring one epoch finished and starting the next epoch. When training with input tensors such as TensorFlow data tensors, the default ``NULL`` is equal to the number of samples in your dataset divided by the batch size, or 1 if that cannot be determined.
validation_steps | Only relevant if ``steps_per_epoch`` is specified. Total number of steps (batches of samples) to validate before stopping.
... | Unused





## Value

A ``history`` object that contains all information collected
during training.






## See Also

Other model functions: 
`compile.keras.engine.training.Model()`,
`evaluate.keras.engine.training.Model()`,
`evaluate_generator()`,
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




# export_savedmodel.keras.engine.training.Model


Export a Saved Model




## Description

Serialize a model to disk.





## Usage

export_savedmodelkeras.engine.training.Model(
  object,
  export_dir_base,
  overwrite = TRUE,
  versioned = !overwrite,
  remove_learning_phase = TRUE,
  as_text = FALSE,
  ...
)





## Arguments


Argument      |Description
------------- |----------------
object | An  object.
export_dir_base | A string containing a directory in which to export the SavedModel.
overwrite | Should the ``export_dir_base`` directory be overwritten?
versioned | Should the model be exported under a versioned subdirectory?
remove_learning_phase | Should the learning phase be removed by saving and reloading the model? Defaults to ``TRUE``.
as_text | Whether to write the SavedModel in text format.
... | Other arguments passed to tf.saved_model.save. (Used only if TensorFlow version >= 2.0)





## Value

The path to the exported directory, as a string.






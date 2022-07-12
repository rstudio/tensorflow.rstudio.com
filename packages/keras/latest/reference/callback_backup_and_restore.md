# callback_backup_and_restore


Callback to back up and restore the training state




## Description

Callback to back up and restore the training state





## Usage
```r
callback_backup_and_restore(backup_dir, ...)
```




## Arguments


Argument      |Description
------------- |----------------
backup_dir | String, path to store the checkpoint. e.g. ``backup_dir = normalizePath('./backup')`` This is the directory in which the system stores temporary files to recover the model from jobs terminated unexpectedly. The directory cannot be reused elsewhere to store other files, e.g. by ``BackupAndRestore`` callback of another training, or by another callback (``ModelCheckpoint``) of the same training.
... | For backwards and forwards compatibility




## Details

``BackupAndRestore`` callback is intended to recover training from an
interruption that has happened in the middle of a ``fit(model)`` execution, by
backing up the training states in a temporary checkpoint file (with the help
of a ``tf.train.CheckpointManager``), at the end of each epoch. Each backup
overwrites the previously written checkpoint file, so at any given time there
is at most one such checkpoint file for backup/restoring purpose.

If training restarts before completion, the training state (which includes the
``Model`` weights and epoch number) is restored to the most recently saved state
at the beginning of a new ``fit()`` run. At the completion of a ``fit()``
run, the temporary checkpoint file is deleted.

Note that the user is responsible to bring jobs back after the interruption.
This callback is important for the backup and restore mechanism for fault
tolerance purpose, and the model to be restored from an previous checkpoint is
expected to be the same as the one used to back up. If user changes arguments
passed to compile or fit, the checkpoint saved for fault tolerance can become
invalid.

Note:


*  This callback is not compatible with eager execution disabled.

*  A checkpoint is saved at the end of each epoch. After restoring,
`fit()` redoes any partial work during the unfinished epoch in which the
training got restarted (so the work done before the interruption doesn't
affect the final model state).

*  This works for both single worker and multi-worker modes. When `fit()`
is used with `tf.distribute`, it supports `tf.distribute.MirroredStrategy`,
`tf.distribute.MultiWorkerMirroredStrategy`, `tf.distribute.TPUStrategy`, and
`tf.distribute.experimental.ParameterServerStrategy`.








## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/callbacks/BackupAndRestore





# timeseries_dataset_from_array


Creates a dataset of sliding windows over a timeseries provided as array




## Description

Creates a dataset of sliding windows over a timeseries provided as array





## Usage
```r
timeseries_dataset_from_array(
  data,
  targets,
  sequence_length,
  sequence_stride = 1L,
  sampling_rate = 1L,
  batch_size = 128L,
  shuffle = FALSE,
  ...,
  seed = NULL,
  start_index = NULL,
  end_index = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
data | array or eager tensor containing consecutive data points (timesteps). The first axis is expected to be the time dimension.
targets | Targets corresponding to timesteps in ``data``. ``targets[i]`` should be the target corresponding to the window that starts at index ``i`` (see example 2 below). Pass NULL if you don't have target data (in this case the dataset will only yield the input data).
sequence_length | Length of the output sequences (in number of timesteps).
sequence_stride | Period between successive output sequences. For stride ``s``, output samples would start at index ``data[i]``, ``data[i + s]``, ``data[i + (2 * s)]``, etc.
sampling_rate | Period between successive individual timesteps within sequences. For rate ``r``, timesteps data[i], data[i + r], ... data[i + sequence_length] are used for create a sample sequence.
batch_size | Number of timeseries samples in each batch (except maybe the last one).
shuffle | Whether to shuffle output samples, or instead draw them in chronological order.
... | For backwards and forwards compatibility, ignored presently.
seed | Optional int; random seed for shuffling.
start_index, end_index | Optional int (1 based); data points earlier than ``start_index`` or later then ``end_index`` will not be used in the output sequences. This is useful to reserve part of the data for test or validation.




## Details

This function takes in a sequence of data-points gathered at
equal intervals, along with time series parameters such as
length of the sequences/windows, spacing between two sequence/windows, etc.,
to produce batches of timeseries inputs and targets.





## Value

A ``tf.data.Dataset`` instance. If ``targets`` was passed, the
dataset yields batches of two items: (batch_of_sequences, batch_of_targets). If not, the dataset yields only
``batch_of_sequences``.






## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/utils/timeseries_dataset_from_array





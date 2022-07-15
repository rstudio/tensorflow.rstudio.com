## Creating Datasets

Function(s) | Description
------------- |----------------
[text_line_dataset()](/reference/tfdatasets/latest/reference/text_line_dataset.html) | A dataset comprising lines from one or more text files.
[tfrecord_dataset()](/reference/tfdatasets/latest/reference/tfrecord_dataset.html) | A dataset comprising records from one or more TFRecord files.
[sql_record_spec()](/reference/tfdatasets/latest/reference/sql_dataset.html) [sql_dataset()](/reference/tfdatasets/latest/reference/sql_dataset.html) [sqlite_dataset()](/reference/tfdatasets/latest/reference/sql_dataset.html) | A dataset consisting of the results from a SQL query
[tensors_dataset()](/reference/tfdatasets/latest/reference/tensors_dataset.html) | Creates a dataset with a single element, comprising the given tensors.
[tensor_slices_dataset()](/reference/tfdatasets/latest/reference/tensor_slices_dataset.html) | Creates a dataset whose elements are slices of the given tensors.
[sparse_tensor_slices_dataset()](/reference/tfdatasets/latest/reference/sparse_tensor_slices_dataset.html) | Splits each rank-N <code>tf$SparseTensor</code> in this dataset row-wise.
[fixed_length_record_dataset()](/reference/tfdatasets/latest/reference/fixed_length_record_dataset.html) | A dataset of fixed-length records from one or more binary files.
[file_list_dataset()](/reference/tfdatasets/latest/reference/file_list_dataset.html) | A dataset of all files matching a pattern
[range_dataset()](/reference/tfdatasets/latest/reference/range_dataset.html) | Creates a dataset of a step-separated range of values.
[read_files()](/reference/tfdatasets/latest/reference/read_files.html) | Read a dataset from a set of files
[delim_record_spec()](/reference/tfdatasets/latest/reference/delim_record_spec.html) [csv_record_spec()](/reference/tfdatasets/latest/reference/delim_record_spec.html) [tsv_record_spec()](/reference/tfdatasets/latest/reference/delim_record_spec.html) | Specification for reading a record from a text file with delimited values
[make_csv_dataset()](/reference/tfdatasets/latest/reference/make_csv_dataset.html) | Reads CSV files into a batched dataset

## Transforming Datasets

Function(s) | Description
------------- |----------------
[dataset_map()](/reference/tfdatasets/latest/reference/dataset_map.html) | Map a function across a dataset.
[dataset_map_and_batch()](/reference/tfdatasets/latest/reference/dataset_map_and_batch.html) | Fused implementation of dataset_map() and dataset_batch()
[dataset_prepare()](/reference/tfdatasets/latest/reference/dataset_prepare.html) | Prepare a dataset for analysis
[dataset_skip()](/reference/tfdatasets/latest/reference/dataset_skip.html) | Creates a dataset that skips count elements from this dataset
[dataset_filter()](/reference/tfdatasets/latest/reference/dataset_filter.html) | Filter a dataset by a predicate
[dataset_shard()](/reference/tfdatasets/latest/reference/dataset_shard.html) | Creates a dataset that includes only 1 / num_shards of this dataset.
[dataset_shuffle()](/reference/tfdatasets/latest/reference/dataset_shuffle.html) | Randomly shuffles the elements of this dataset.
[dataset_shuffle_and_repeat()](/reference/tfdatasets/latest/reference/dataset_shuffle_and_repeat.html) | Shuffles and repeats a dataset returning a new permutation for each epoch.
[dataset_prefetch()](/reference/tfdatasets/latest/reference/dataset_prefetch.html) | Creates a Dataset that prefetches elements from this dataset.
[dataset_batch()](/reference/tfdatasets/latest/reference/dataset_batch.html) | Combines consecutive elements of this dataset into batches.
[dataset_repeat()](/reference/tfdatasets/latest/reference/dataset_repeat.html) | Repeats a dataset count times.
[dataset_cache()](/reference/tfdatasets/latest/reference/dataset_cache.html) | Caches the elements in this dataset.
[dataset_take()](/reference/tfdatasets/latest/reference/dataset_take.html) | Creates a dataset with at most count elements from this dataset
[dataset_flat_map()](/reference/tfdatasets/latest/reference/dataset_flat_map.html) | Maps map_func across this dataset and flattens the result.
[dataset_padded_batch()](/reference/tfdatasets/latest/reference/dataset_padded_batch.html) | Combines consecutive elements of this dataset into padded batches.
[dataset_decode_delim()](/reference/tfdatasets/latest/reference/dataset_decode_delim.html) | Transform a dataset with delimted text lines into a dataset with named
columns
[dataset_concatenate()](/reference/tfdatasets/latest/reference/dataset_concatenate.html) | Creates a dataset by concatenating given dataset with this dataset.
[dataset_interleave()](/reference/tfdatasets/latest/reference/dataset_interleave.html) | Maps map_func across this dataset, and interleaves the results
[dataset_prefetch_to_device()](/reference/tfdatasets/latest/reference/dataset_prefetch_to_device.html) | A transformation that prefetches dataset values to the given <code>device</code>
[dataset_window()](/reference/tfdatasets/latest/reference/dataset_window.html) | Combines input elements into a dataset of windows.
[dataset_collect()](/reference/tfdatasets/latest/reference/dataset_collect.html) | Collects a dataset
[zip_datasets()](/reference/tfdatasets/latest/reference/zip_datasets.html) | Creates a dataset by zipping together the given datasets.
[sample_from_datasets()](/reference/tfdatasets/latest/reference/sample_from_datasets.html) | Samples elements at random from the datasets in <code>datasets</code>.
[with_dataset()](/reference/tfdatasets/latest/reference/with_dataset.html) | Execute code that traverses a dataset

## Dataset Properites

Function(s) | Description
------------- |----------------
[output_types()](/reference/tfdatasets/latest/reference/output_types.html) [output_shapes()](/reference/tfdatasets/latest/reference/output_types.html) | Output types and shapes

## Dataset Iterators

Function(s) | Description
------------- |----------------
[input_fn.tf_dataset()](/reference/tfdatasets/latest/reference/input_fn.html) | Construct a tfestimators input function from a dataset
[make_iterator_one_shot()](/reference/tfdatasets/latest/reference/make-iterator.html) [make_iterator_initializable()](/reference/tfdatasets/latest/reference/make-iterator.html) [make_iterator_from_structure()](/reference/tfdatasets/latest/reference/make-iterator.html) [make_iterator_from_string_handle()](/reference/tfdatasets/latest/reference/make-iterator.html) | Creates an iterator for enumerating the elements of this dataset.
[iterator_get_next()](/reference/tfdatasets/latest/reference/iterator_get_next.html) | Get next element from iterator
[iterator_initializer()](/reference/tfdatasets/latest/reference/iterator_initializer.html) | An operation that should be run to initialize this iterator.
[iterator_string_handle()](/reference/tfdatasets/latest/reference/iterator_string_handle.html) | String-valued tensor that represents this iterator
[iterator_make_initializer()](/reference/tfdatasets/latest/reference/iterator_make_initializer.html) | Create an operation that can be run to initialize this iterator
[until_out_of_range()](/reference/tfdatasets/latest/reference/until_out_of_range.html) [out_of_range_handler()](/reference/tfdatasets/latest/reference/until_out_of_range.html) | Execute code that traverses a dataset until an out of range condition occurs
[next_batch()](/reference/tfdatasets/latest/reference/next_batch.html) | Tensor(s) for retrieving the next batch from a dataset

## Feature Spec API

Function(s) | Description
------------- |----------------
[feature_spec()](/reference/tfdatasets/latest/reference/feature_spec.html) | Creates a feature specification.
[dense_features()](/reference/tfdatasets/latest/reference/dense_features.html) | Dense Features
[dataset_use_spec()](/reference/tfdatasets/latest/reference/dataset_use_spec.html) | Transform the dataset using the provided spec.
[fit(<i>&lt;FeatureSpec&gt;</i>)](/reference/tfdatasets/latest/reference/fit.FeatureSpec.html) | Fits a feature specification.
[scaler_min_max()](/reference/tfdatasets/latest/reference/scaler_min_max.html) | Creates an instance of a min max scaler
[scaler_standard()](/reference/tfdatasets/latest/reference/scaler_standard.html) | Creates an instance of a standard scaler
[cur_info_env](/reference/tfdatasets/latest/reference/selectors.html) | Selectors
[layer_input_from_dataset()](/reference/tfdatasets/latest/reference/layer_input_from_dataset.html) | Creates a list of inputs from a dataset

## Data

Function(s) | Description
------------- |----------------
[hearts](/reference/tfdatasets/latest/reference/hearts.html) | Heart Disease Data Set


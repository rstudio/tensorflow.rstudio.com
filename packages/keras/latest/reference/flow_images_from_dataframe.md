# flow_images_from_dataframe


Takes the dataframe and the path to a directory and generates batches of
augmented/normalized data.




## Description

Takes the dataframe and the path to a directory and generates batches of
augmented/normalized data.





## Usage
```r
flow_images_from_dataframe(
  dataframe,
  directory = NULL,
  x_col = "filename",
  y_col = "class",
  generator = image_data_generator(),
  target_size = c(256, 256),
  color_mode = "rgb",
  classes = NULL,
  class_mode = "categorical",
  batch_size = 32,
  shuffle = TRUE,
  seed = NULL,
  save_to_dir = NULL,
  save_prefix = "",
  save_format = "png",
  subset = NULL,
  interpolation = "nearest",
  drop_duplicates = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
dataframe | ``data.frame`` containing the filepaths relative to directory (or absolute paths if directory is ``NULL``) of the images in a character column. It should include other column/s depending on the ``class_mode``:   *  if `class_mode` is "categorical" (default value) it must include the `y_col` column with the class/es of each image. Values in column can be character/list if a single class or list if multiple classes.  *  if `class_mode` is "binary" or "sparse" it must include the given `y_col` column with class values as strings.  *  if `class_mode` is "other" it should contain the columns specified in `y_col`.  *  if `class_mode` is "input" or NULL no extra column is needed.
directory | character, path to the directory to read images from. If ``NULL``, data in ``x_col`` column should be absolute paths.
x_col | character, column in dataframe that contains the filenames (or absolute paths if directory is ``NULL``).
y_col | string or list, column/s in dataframe that has the target data.
generator | Image data generator to use for augmenting/normalizing image data.
target_size | Either ``NULL`` (default to original size) or integer vector (img_height, img_width).
color_mode | one of "grayscale", "rgb". Default: "rgb". Whether the images will be converted to have 1 or 3 color channels.
classes | optional list of classes (e.g. ``c('dogs', 'cats')``. Default: ``NULL`` If not provided, the list of classes will be automatically inferred from the ``y_col``, which will map to the label indices, will be alphanumeric). The dictionary containing the mapping from class names to class indices can be obtained via the attribute ``class_indices``.
class_mode | one of "categorical", "binary", "sparse", "input", "other" or None. Default: "categorical". Mode for yielding the targets:   *  "binary": 1D array of binary labels,  *  "categorical": 2D array of one-hot encoded labels. Supports multi-label output.  *  "sparse": 1D array of integer labels,  *  "input": images identical to input images (mainly used to work with autoencoders),  *  "other": array of y_col data,  *  "multi_output": allow to train a multi-output model. Y is a list or a vector. `NULL`, no targets are returned (the generator will only yield batches of image data, which is useful to use in  `predict_generator()`).
batch_size | int (default: ``32``).
shuffle | boolean (defaut: ``TRUE``).
seed | int (default: ``NULL``).
save_to_dir | ``NULL`` or str (default: ``NULL``). This allows you to optionally specify a directory to which to save the augmented pictures being generated (useful for visualizing what you are doing).
save_prefix | str (default: ''). Prefix to use for filenames of saved pictures (only relevant if ``save_to_dir`` is set).
save_format | one of "png", "jpeg" (only relevant if save_to_dir is set). Default: "png".
subset | Subset of data (``"training"`` or ``"validation"``) if ``validation_split`` is set in `image_data_generator()`.
interpolation | Interpolation method used to resample the image if the target size is different from that of the loaded image. Supported methods are "nearest", "bilinear", and "bicubic". If PIL version 1.1.3 or newer is installed, "lanczos" is also supported. If PIL version 3.4.0 or newer is installed, "box" and "hamming" are also supported. By default, "nearest" is used.
drop_duplicates | (deprecated in TF >= 2.3) Boolean, whether to drop duplicate rows based on filename. The default value is ``TRUE``.




## Details

Yields batches indefinitely, in an infinite loop.







## See Also

Other image preprocessing: 
`fit_image_data_generator()`,
`flow_images_from_data()`,
`flow_images_from_directory()`,
`image_load()`,
`image_to_array()`




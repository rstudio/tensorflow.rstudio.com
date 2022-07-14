# flow_images_from_directory


Generates batches of data from images in a directory (with optional
augmented/normalized data)




## Description

Generates batches of data from images in a directory (with optional
augmented/normalized data)





## Usage
```r
flow_images_from_directory(
  directory,
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
  follow_links = FALSE,
  subset = NULL,
  interpolation = "nearest"
)
```




## Arguments


Argument      |Description
------------- |----------------
directory | path to the target directory. It should contain one subdirectory per class. Any PNG, JPG, BMP, PPM, or TIF images inside each of the subdirectories directory tree will be included in the generator. See https://gist.github.com/fchollet/0830affa1f7f19fd47b06d4cf89ed44dthis script for more details.
generator | Image data generator (default generator does no data augmentation/normalization transformations)
target_size | integer vector, default: ``c(256, 256)``. The dimensions to which all images found will be resized.
color_mode | one of "grayscale", "rbg". Default: "rgb". Whether the images will be converted to have 1 or 3 color channels.
classes | optional list of class subdirectories (e.g. ``c('dogs', 'cats')``). Default: ``NULL``, If not provided, the list of classes will be automatically inferred (and the order of the classes, which will map to the label indices, will be alphanumeric).
class_mode | one of "categorical", "binary", "sparse" or ``NULL``. Default: "categorical". Determines the type of label arrays that are returned: "categorical" will be 2D one-hot encoded labels, "binary" will be 1D binary labels, "sparse" will be 1D integer labels. If ``NULL``, no labels are returned (the generator will only yield batches of image data, which is useful to use `predict_generator()`, `evaluate_generator()`, etc.).
batch_size | int (default: ``32``).
shuffle | boolean (defaut: ``TRUE``).
seed | int (default: ``NULL``).
save_to_dir | ``NULL`` or str (default: ``NULL``). This allows you to optionally specify a directory to which to save the augmented pictures being generated (useful for visualizing what you are doing).
save_prefix | str (default: ''). Prefix to use for filenames of saved pictures (only relevant if ``save_to_dir`` is set).
save_format | one of "png", "jpeg" (only relevant if save_to_dir is set). Default: "png".
follow_links | whether to follow symlinks inside class subdirectories (default: ``FALSE``)
subset | Subset of data (``"training"`` or ``"validation"``) if ``validation_split`` is set in `image_data_generator()`.
interpolation | Interpolation method used to resample the image if the target size is different from that of the loaded image. Supported methods are "nearest", "bilinear", and "bicubic". If PIL version 1.1.3 or newer is installed, "lanczos" is also supported. If PIL version 3.4.0 or newer is installed, "box" and "hamming" are also supported. By default, "nearest" is used.




## Details

Yields batches indefinitely, in an infinite loop.







## See Also

Other image preprocessing: 
`fit_image_data_generator()`,
`flow_images_from_dataframe()`,
`flow_images_from_data()`,
`image_load()`,
`image_to_array()`




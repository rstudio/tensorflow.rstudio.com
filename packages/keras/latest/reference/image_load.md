# image_load


Loads an image into PIL format.




## Description

Loads an image into PIL format.





## Usage
```r
image_load(
  path,
  grayscale = FALSE,
  color_mode = "rgb",
  target_size = NULL,
  interpolation = "nearest"
)
```




## Arguments


Argument      |Description
------------- |----------------
path | Path to image file
grayscale | DEPRECATED use ``color_mode="grayscale"``
color_mode | One of `"grayscale"`, `"rgb"`, `"rgba"`. Default: ``"rgb"``. The desired image format.
target_size | Either ``NULL`` (default to original size) or integer vector (img_height, img_width).
interpolation | Interpolation method used to resample the image if the target size is different from that of the loaded image. Supported methods are "nearest", "bilinear", and "bicubic". If PIL version 1.1.3 or newer is installed, "lanczos" is also supported. If PIL version 3.4.0 or newer is installed, "box" and "hamming" are also supported. By default, "nearest" is used.





## Value

A PIL Image instance.






## See Also

Other image preprocessing: 
`fit_image_data_generator()`,
`flow_images_from_dataframe()`,
`flow_images_from_data()`,
`flow_images_from_directory()`,
`image_to_array()`




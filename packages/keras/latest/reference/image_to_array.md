# image_to_array


3D array representation of images




## Description

3D array that represents an image with dimensions (height,width,channels) or
(channels,height,width) depending on the data_format.





## Usage
```r
image_to_array(img, data_format = c("channels_last", "channels_first"))

image_array_resize(
  img,
  height,
  width,
  data_format = c("channels_last", "channels_first")
)

image_array_save(
  img,
  path,
  data_format = NULL,
  file_format = NULL,
  scale = TRUE
)
```




## Arguments


Argument      |Description
------------- |----------------
img | Image
data_format | Image data format ("channels_last" or "channels_first")
height | Height to resize to
width | Width to resize to
path | Path to save image to
file_format | Optional file format override. If omitted, the format to use is determined from the filename extension. If a file object was used instead of a filename, this parameter should always be used.
scale | Whether to rescale image values to be within 0,255







## See Also

Other image preprocessing: 
`fit_image_data_generator()`,
`flow_images_from_dataframe()`,
`flow_images_from_data()`,
`flow_images_from_directory()`,
`image_load()`




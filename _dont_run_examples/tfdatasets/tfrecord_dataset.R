library(tfdatasets)
# Creates a dataset that reads all of the examples from two files, and extracts 
# the image and label features. 
filenames <- c("/var/data/file1.tfrecord", "/var/data/file2.tfrecord") 
dataset <- tfrecord_dataset(filenames) %>% 
  dataset_map(function(example_proto) { 
    features <- list( 
      image = tf$FixedLenFeature(shape(), tf$string, default_value = ""), 
      label = tf$FixedLenFeature(shape(), tf$int32, default_value = 0L) 
    ) 
    tf$parse_single_example(example_proto, features) 
  }) 

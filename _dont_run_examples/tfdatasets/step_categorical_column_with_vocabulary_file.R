library(tfdatasets) 
data(hearts) 
file <- tempfile() 
writeLines(unique(hearts$thal), file) 
hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32) 
# use the formula interface 
spec <- feature_spec(hearts, target ~ thal) %>% 
  step_categorical_column_with_vocabulary_file(thal, vocabulary_file = file) 
spec_fit <- fit(spec) 
final_dataset <- hearts %>% dataset_use_spec(spec_fit) 

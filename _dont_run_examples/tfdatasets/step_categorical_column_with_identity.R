library(tfdatasets) 
data(hearts) 
hearts$thal <- as.integer(as.factor(hearts$thal)) - 1L 
hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32) 
# use the formula interface 
spec <- feature_spec(hearts, target ~ thal) %>% 
  step_categorical_column_with_identity(thal, num_buckets = 5) 
spec_fit <- fit(spec) 
final_dataset <- hearts %>% dataset_use_spec(spec_fit) 

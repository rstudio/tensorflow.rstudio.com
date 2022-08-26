library(tfdatasets) 
data(hearts) 
file <- tempfile() 
writeLines(unique(hearts$thal), file) 
hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32) 
# use the formula interface 
spec <- feature_spec(hearts, target ~ age) %>% 
  step_numeric_column(age) %>% 
  step_bucketized_column(age, boundaries = c(10, 20, 30)) 
spec_fit <- fit(spec) 
final_dataset <- hearts %>% dataset_use_spec(spec_fit) 

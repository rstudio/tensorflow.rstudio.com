library(tfdatasets) 
data(hearts) 
hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32) 
# use the formula interface 
spec <- feature_spec(hearts, target ~ age) %>% 
  step_numeric_column(age) 
spec_fit <- fit(spec) 
final_dataset <- hearts %>% dataset_use_spec(spec_fit) 

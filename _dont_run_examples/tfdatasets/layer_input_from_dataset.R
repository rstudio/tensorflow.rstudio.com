library(tfdatasets) 
data(hearts) 
hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32) 
# use the formula interface 
spec <- feature_spec(hearts, target ~ age + slope) %>% 
  step_numeric_column(age, slope) %>% 
  step_bucketized_column(age, boundaries = c(10, 20, 30)) 
spec <- fit(spec) 
dataset <- hearts %>% dataset_use_spec(spec) 
input <- layer_input_from_dataset(dataset) 

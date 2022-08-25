library(tfdatasets) 
data(hearts) 
hearts <- tensor_slices_dataset(hearts) %>% dataset_batch(32) 
# use the formula interface 
spec <- feature_spec(hearts, target ~ .) 
# select using `tidyselect` helpers 
spec <- feature_spec(hearts, x = c(thal, age), y = target) 

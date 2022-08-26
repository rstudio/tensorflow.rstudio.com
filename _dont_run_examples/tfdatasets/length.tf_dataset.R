library(tfdatasets)
range_dataset(0, 42) %>% length() 
# 42 
range_dataset(0, 42) %>% dataset_repeat() %>% length() 
# Inf 
range_dataset(0, 42) %>% dataset_repeat() %>% 
  dataset_filter(function(x) TRUE) %>% length() 
# NA 

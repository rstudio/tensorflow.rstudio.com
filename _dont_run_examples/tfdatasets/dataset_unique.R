library(tfdatasets)
c(0, 37, 2, 37, 2, 1) %>% as_tensor("int32") %>% 
  tensor_slices_dataset() %>% 
  dataset_unique() %>% 
  as_array_iterator() %>% iterate() %>% sort() 
# [1]  0  1  2 37 

A <- range_dataset(1, 5, dtype = tf$int32) %>% 
  dataset_map(function(x) tf$fill(list(x), x)) 
# Pad to the smallest per-batch size that fits all elements. 
B <- A %>% dataset_padded_batch(2) 
B %>% as_array_iterator() %>% iterate(print) 
# Pad to a fixed size. 
C <- A %>% dataset_padded_batch(2, padded_shapes=5) 
C %>% as_array_iterator() %>% iterate(print) 
# Pad with a custom value. 
D <- A %>% dataset_padded_batch(2, padded_shapes=5, padding_values = -1L) 
D %>% as_array_iterator() %>% iterate(print) 
# Pad with a single value and multiple components. 
E <- zip_datasets(A, A) %>%  dataset_padded_batch(2, padding_values = -1L) 
E %>% as_array_iterator() %>% iterate(print) 

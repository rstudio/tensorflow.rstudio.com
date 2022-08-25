datasets <- list(tensors_dataset("foo") %>% dataset_repeat(), 
                 tensors_dataset("bar") %>% dataset_repeat(), 
                 tensors_dataset("baz") %>% dataset_repeat()) 
# Define a dataset containing `[0, 1, 2, 0, 1, 2, 0, 1, 2]`. 
choice_dataset <- range_dataset(0, 3) %>% dataset_repeat(3) 
result <- choose_from_datasets(datasets, choice_dataset) 
result %>% as_array_iterator() %>% iterate(function(s) s$decode()) %>% print() 
# [1] "foo" "bar" "baz" "foo" "bar" "baz" "foo" "bar" "baz" 

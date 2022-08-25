dataset <- tensor_slices_dataset(100:103) %>% 
  dataset_enumerate() 
iterator <- reticulate::as_iterator(dataset) 
reticulate::iter_next(iterator) # list(0, 100) 
reticulate::iter_next(iterator) # list(1, 101) 
reticulate::iter_next(iterator) # list(2, 102) 
reticulate::iter_next(iterator) # list(3, 103) 
reticulate::iter_next(iterator) # NULL (iterator exhausted) 
reticulate::iter_next(iterator) # NULL (iterator exhausted) 

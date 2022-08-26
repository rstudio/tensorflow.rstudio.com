library(tfdatasets)
dataset <- list(c(0), 
                c(1, 2, 3, 4), 
                c(5, 6, 7), 
                c(7, 8, 9, 10, 11), 
                c(13, 14, 15, 16, 17, 18, 19, 20), 
                c(21, 22)) %>% 
  lapply(as.array) %>% lapply(as_tensor, "int32") %>% 
  lapply(tensors_dataset) %>% 
  Reduce(dataset_concatenate, .) 
dataset %>% 
  dataset_bucket_by_sequence_length( 
    element_length_func = function(elem) tf$shape(elem)[1], 
    bucket_boundaries = c(3, 5), 
    bucket_batch_sizes = c(2, 2, 2) 
  ) %>% 
  as_array_iterator() %>% 
  iterate(print) 
#      [,1] [,2] [,3] [,4] 
# [1,]    1    2    3    4 
# [2,]    5    6    7    0 
#      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] 
# [1,]    7    8    9   10   11    0    0    0 
# [2,]   13   14   15   16   17   18   19   20 
#      [,1] [,2] 
# [1,]    0    0 
# [2,]   21   22 

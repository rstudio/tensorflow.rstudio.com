library(tfdatasets)
dataset <- tensor_slices_dataset(c(1,2,3,4,5)) %>% 
 dataset_interleave(cycle_length = 2, block_length = 4, function(x) { 
   tensors_dataset(x) %>% 
     dataset_repeat(6) 
 }) 
# resulting dataset (newlines indicate "block" boundaries): 
c(1, 1, 1, 1, 
  2, 2, 2, 2, 
  1, 1, 
  2, 2, 
  3, 3, 3, 3, 
  4, 4, 4, 4, 
  3, 3, 
  4, 4, 
  5, 5, 5, 5, 
  5, 5, 
) 

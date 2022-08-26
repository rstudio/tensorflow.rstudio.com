library(tfdatasets)
initial_state <- as_tensor(0, dtype="int64") 
scan_func <- function(state, i) list(state + i, state + i) 
dataset <- range_dataset(0, 10) %>% 
  dataset_scan(initial_state, scan_func) 
reticulate::iterate(dataset, as.array) %>% 
  unlist() 
# 0  1  3  6 10 15 21 28 36 45 

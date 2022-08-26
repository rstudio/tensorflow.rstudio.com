library(tfdatasets)
# pass options directly: 
range_dataset(0, 10) %>% 
  dataset_options( 
    experimental_deterministic = FALSE, 
    threading.private_threadpool_size = 10 
  ) 
# pass options as a named list: 
opts <- list( 
  experimental_deterministic = FALSE, 
  threading.private_threadpool_size = 10 
) 
range_dataset(0, 10) %>% 
  dataset_options(opts) 
# pass a tf.data.Options() instance 
opts <- tf$data$Options() 
opts$experimental_deterministic <- FALSE 
opts$threading$private_threadpool_size <- 10L 
range_dataset(0, 10) %>% 
  dataset_options(opts) 
# get currently set options 
range_dataset(0, 10) %>% dataset_options() 

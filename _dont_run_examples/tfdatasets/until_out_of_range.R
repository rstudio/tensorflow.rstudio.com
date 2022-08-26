library(tfdatasets) 
dataset <- text_line_dataset("mtcars.csv", record_spec = mtcars_spec) %>% 
  dataset_batch(128) %>% 
  dataset_repeat(10) %>% 
  dataset_prepare(x = c(mpg, disp), y = cyl) 
iter <- make_iterator_one_shot(dataset) 
next_batch <- iterator_get_next(iter) 
until_out_of_range({ 
  batch <- sess$run(next_batch) 
  # use batch$x and batch$y tensors 
}) 

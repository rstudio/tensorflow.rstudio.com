library(tfdatasets) 
dataset <- text_line_dataset("mtcars.csv", record_spec = mtcars_spec) %>% 
  dataset_prepare(x = c(mpg, disp), y = cyl) %>% 
  dataset_batch(128) %>% 
  dataset_repeat(10) 
iter <- make_iterator_one_shot(dataset) 
next_batch <- iterator_get_next(iter) 
with_dataset({ 
  while(TRUE) { 
    batch <- sess$run(next_batch) 
    # use batch$x and batch$y tensors 
  } 
}) 

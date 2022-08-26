# iteration with 'infinite' dataset and explicit step counter 
library(tfdatasets) 
dataset <- text_line_dataset("mtcars.csv", record_spec = mtcars_spec) %>% 
  dataset_prepare(x = c(mpg, disp), y = cyl) %>% 
  dataset_shuffle(5000) %>% 
  dataset_batch(128) %>% 
  dataset_repeat() # repeat infinitely 
batch <- next_batch(dataset) 
steps <- 200 
for (i in 1:steps) { 
  # use batch$x and batch$y tensors 
} 
# iteration that detects and ignores end of iteration error 
library(tfdatasets) 
dataset <- text_line_dataset("mtcars.csv", record_spec = mtcars_spec) %>% 
  dataset_prepare(x = c(mpg, disp), y = cyl) %>% 
  dataset_batch(128) %>% 
  dataset_repeat(10) 
batch <- next_batch(dataset) 
with_dataset({ 
  while(TRUE) { 
    # use batch$x and batch$y tensors 
  } 
}) 

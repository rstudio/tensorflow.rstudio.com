library(tfdatasets)
dataset <- text_line_dataset("mtcars.csv", record_spec = mtcars_spec) %>% 
  dataset_filter(function(record) { 
    record$mpg >= 20 
}) 
dataset <- text_line_dataset("mtcars.csv", record_spec = mtcars_spec) %>% 
  dataset_filter(function(record) { 
    record$mpg >= 20 & record$cyl >= 6L 
  }) 

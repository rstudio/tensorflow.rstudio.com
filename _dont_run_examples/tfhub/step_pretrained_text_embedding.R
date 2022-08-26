library(tfhub)
library(tibble) 
library(recipes) 
df <- tibble(text = c('hi', "heello", "goodbye"), y = 0) 
rec <- recipe(y ~ text, df) 
rec <- rec %>% step_pretrained_text_embedding( 
 text, 
 handle = "https://tfhub.dev/google/tf2-preview/gnews-swivel-20dim-with-oov/1" 
) 

library(tfautograph)
## when you're in graph mode. (e.g, tf$executing_eagerly == FALSE) 
ag_name("main-training-loop") 
for(elem in dataset) ... 

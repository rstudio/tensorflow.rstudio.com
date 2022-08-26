library(tfdatasets)
initial_dist <- c(.5, .5) 
target_dist <- c(.6, .4) 
num_classes <- length(initial_dist) 
num_samples <- 100000 
data <- sample.int(num_classes, num_samples, prob = initial_dist, replace = TRUE) 
dataset <- tensor_slices_dataset(data) 
tally <- c(0, 0) 
`add<-` <- function (x, value) x + value 
# tfautograph::autograph({ 
#   for(i in dataset) 
#     add(tally[as.numeric(i)]) <- 1 
# }) 
dataset %>% 
  as_array_iterator() %>% 
  iterate(function(i) { 
    add(tally[i]) <<- 1 
  }, simplify = FALSE) 
# The value of `tally` will be close to c(50000, 50000) as 
# per the `initial_dist` distribution. 
tally # c(50287, 49713) 
tally <- c(0, 0) 
dataset %>% 
  dataset_rejection_resample( 
    class_func = function(x) (x-1) %% 2, 
    target_dist = target_dist, 
    initial_dist = initial_dist 
  ) %>% 
  as_array_iterator() %>% 
  iterate(function(element) { 
    names(element) <- c("class_id", "i") 
    add(tally[element$i]) <<- 1 
  }, simplify = FALSE) 
# The value of tally will be now be close to c(75000, 50000) 
# thus satisfying the target_dist distribution. 
tally # c(74822, 49921) 

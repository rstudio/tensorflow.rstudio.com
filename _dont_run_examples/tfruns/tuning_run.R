library(tfruns) 
# using a list as input to the flags argument 
runs <- tuning_run( 
  system.file("examples/mnist_mlp/mnist_mlp.R", package = "tfruns"), 
  flags = list( 
    dropout1 = c(0.2, 0.3, 0.4), 
    dropout2 = c(0.2, 0.3, 0.4) 
  ) 
) 
runs[order(runs$eval_acc, decreasing = TRUE), ] 
# using a data frame as input to the flags argument 
# resulting in the same combinations above, but remove those 
# where the combined dropout rate exceeds 1 
grid <- expand.grid( 
  dropout1 = c(0.2, 0.3, 0.4), 
  dropout2 = c(0.2, 0.3, 0.4) 
) 
grid$combined_droput <- grid$dropout1 + grid$dropout2 
grid <- grid[grid$combined_droput <= 1, ] 
runs <- tuning_run( 
  system.file("examples/mnist_mlp/mnist_mlp.R", package = "tfruns"), 
  flags = grid[, c("dropout1", "dropout2")] 
) 

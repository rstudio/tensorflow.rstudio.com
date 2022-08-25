ta <- tf$TensorArray(tf$float32, size = 5L) 
for(i in 0:4) 
  ta[[i]] <- i 
ta$stack() 
# You can use this to grow objects in graph mode 
accuracies_log <- tf$TensorArray(tf$float32, size = 0L, dynamic_size=TRUE) 
for(epoch in 0:4) 
  accuracies_log[[epoch]] <- runif(1) 
acc <- accuracies_log$stack() 
acc 

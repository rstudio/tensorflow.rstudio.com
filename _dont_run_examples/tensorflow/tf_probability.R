library(tensorflow) 
tfp <- tf_probability() 
tfp$distributions$Normal(loc=0, scale=1) 

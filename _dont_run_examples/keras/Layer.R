library(keras)
layer_dense2 <- Layer( 
  "Dense2", 
  initialize = function(units) { 
    super()$`__init__`() 
    self$units <- as.integer(units) 
  }, 
  build = function(input_shape) { 
    print(class(input_shape)) 
    self$kernel <- self$add_weight( 
      name = "kernel", 
      shape = list(input_shape[[2]], self$units), 
      initializer = "uniform", 
      trainable = TRUE 
    ) 
  }, 
  call = function(x) { 
    tensorflow::tf$matmul(x, self$kernel) 
  }, 
  compute_output_shape = function(input_shape) { 
    list(input_shape[[1]], self$units) 
  } 
) 
l <- layer_dense2(units = 10) 
l(matrix(runif(10), ncol = 1)) 

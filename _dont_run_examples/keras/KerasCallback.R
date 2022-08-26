library(keras) 
LossHistory <- R6::R6Class("LossHistory", 
  inherit = KerasCallback, 
  public = list( 
    losses = NULL, 
    on_batch_end = function(batch, logs = list()) { 
      self$losses <- c(self$losses, logs[["loss"]]) 
    } 
  ) 
) 

CustomNonNegConstraint <- R6::R6Class( 
  "CustomNonNegConstraint", 
  inherit = KerasConstraint, 
  public = list( 
    call = function(x) { 
       w * k_cast(k_greater_equal(w, 0), k_floatx()) 
    } 
  ) 
) 
layer_dense(units = 32, input_shape = c(784), 
            kernel_constraint = CustomNonNegConstraint$new()) 

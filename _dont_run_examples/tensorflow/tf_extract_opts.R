library(tensorflow)
x <- tf$constant(1:10) 
opts <-  tf_extract_opts("R") 
x[1, options = opts] 
# or for more fine-grained control 
opts <- tf_extract_opts( 
    one_based = FALSE, 
    warn_tensors_passed_asis = FALSE, 
    warn_negatives_pythonic = FALSE 
) 
x[0:2, options = opts] 

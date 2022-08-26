library(tfautograph)
x <- tf$constant(-1) 
try(tf_assert(x > 0, "oopsies! x must be greater than 0")) 

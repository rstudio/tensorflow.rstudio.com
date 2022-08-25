tf_pow <- tf_function(function(x, pow) { 
   tf_switch(pow, 
   0 ~ 1, 
   1 ~ x, 
   2 ~ x * x, 
   3 ~ x * x * x, 
   default = ~ -1) 
}) 
# can optionally also omit the left hand side int, in which case the order of 
# the functions is used. 
tf_pow <- function(x, pow) { 
  tf_switch(pow, 
            ~ 1, 
            ~ x, 
            ~ x * x, 
            ~ x * x * x, 
            default = ~ -1) 
} 
# supply just some of the ints to override the default order 
tf_pow <- function(x, pow) { 
  tf_switch(pow, 
            3 ~ x * x * x, 
            2 ~ x * x, 
            ~ 1, 
            ~ x, 
            default = ~ -1) 
} 
# A slightly less contrived example: 
tf_norm <- tf_function(function(x, l) { 
  tf_switch(l, 
            0 ~ tf$reduce_sum(tf$cast(x != 0, tf$float32)), # L0 norm 
            1 ~ tf$reduce_sum(tf$abs(x)),                   # L1 norm 
            2 ~ tf$sqrt(tf$reduce_sum(tf$square(x))),       # L2 norm 
            default = ~ tf$reduce_max(tf$abs(x)))         # L-infinity norm 
}) 

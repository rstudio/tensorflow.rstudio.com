library(tfautograph)
## use tf_function() to enter graph mode: 
tf_function(autograph(function(n) { 
  ag_name("silly-example") 
  ag_while_opts(back_prop = FALSE) 
  while(n > 0) 
    n <- n - 1 
})) 

library(tfautograph)
## square if positive 
# using tf$cond directly: 
raw <- function(x) tf$cond(x > 0, function() x * x, function() x) 
# using tf_cond() wrapper 
tilde <- function(x) tf_cond(x > 0, ~ x * x, ~ x) 

library(tfautograph)
i <- tf$constant(0L) 
autograph({ 
  ag_loop_vars(x, i) 
  while(x > 0) { 
    if(x %%2 == 0) 
      i <- i + 1L 
    x <- x - 1 
  } 
}) 
## sometimes, a variable is infered to be a loop_var unnecessarily. For example 
x <- tf$constant(1:10) 
# imagine x is left over in the current scope from some previous calculations 
# It's value is not important, but it exists 
autograph({ 
  for(i in tf$constant(1:6)) { 
    x <- i * i 
    tf$print(x) 
  } 
}) 
# this will throw an error because `x` was infered to be a `loop_var`, 
# but it's shape witin the loop body is different from what it was before. 
# there are two solutions to prevent `x` from being captured as a loop_var 
## 1) remove `x` from the current scope like so: 
rm(x) 
## 2) provide a hint like so: 
ag_loop_vars(-x) 
## if your variable names are being dynamically generated, there is an 
## escape hatch for the lazy evaluation semantics of ... 
ag_loop_vars(exclude = "x") 

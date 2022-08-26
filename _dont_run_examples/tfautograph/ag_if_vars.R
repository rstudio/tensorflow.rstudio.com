library(tfautograph)
# these examples only have an effect in graph mode 
# to enter graph mode easily we'll create a few helpers 
ag <- autograph 
# pass which symbols you expect to be modifed or created liks this: 
ag_if_vars(x) 
ag(if (y > 0) { 
  x <- y * y 
} else { 
  x <- y 
}) 
# if the return value from the if expression is important, pass `return = TRUE` 
ag_if_vars(return = TRUE) 
x <- ag(if(y > 0) y * y else y) 
# pass complex nested structures like this 
x <- list(a = 1, b = 2) 
ag_if_vars(x$a) 
ag(if(y > 0) { 
  x$a <- y 
}) 
# undefs are for mark branch-local variables 
ag_if_vars(y, x$a, undef = "tmp_local_var") 
ag(if(y > 0) { 
  y <- y * 100 
  tmp_local_var <- y + 1 
  x$a <- tmp_local_var 
}) 
# supplying `undef` is not necessary, it exists purely as a way to supply a 
# guardrail for defensive programming and/or to improve code readability 
## modified vars can be supplied in `...` or as a named arg. 
## these paires of ag_if_vars() calls are equivalent 
ag_if_vars(y, x$a) 
ag_if_vars(modified = list("y", c("x", "a"))) 
ag_if_vars(x, y, z) 
ag_if_vars(modified = c("x", "y", "z")) 
## control flow 
# count number of odds between 0:10 
ag({ 
  x <- 10 
  count <- 0 
  while(x > 0) { 
    ag_if_vars(control_flow = 1) 
    if(x %% 2 == 0) 
      next 
    count <- count + 1 
  } 
}) 

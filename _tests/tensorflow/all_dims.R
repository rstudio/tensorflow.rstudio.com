# in python, if x is a numpy array or tensorflow tensor 
x[..., i] 
# the ellipsis means "expand to match number of dimension of x". 
# to translate the above python expression to R, write: 
x[all_dims(), i] 

fn <- tf_function(function(x) autograph(if(x > 0) x * x else x)) 
view_function_graph(fn, list(tf$constant(5))) 

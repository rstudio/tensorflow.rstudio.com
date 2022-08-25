fizz_buzz_one <- function(x) { 
  tf_case( 
    x %% 15 == 0 ~ "FizzBuzz", 
    x %%  5 == 0 ~ "Buzz", 
    x %%  3 == 0 ~ "Fizz", 
    default = ~ tf$as_string(x, precision = 0L) 
  ) 
} 
fn <- tf_function(autograph(function(n) { 
  for(e in tf$range(n)) 
    tf$print(fizz_buzz_one(e)) 
})) 
x <- tf$constant(16) 
fn(x) 

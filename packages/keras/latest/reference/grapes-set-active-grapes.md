# %<-active%


Make an Active Binding




## Description

Make an Active Binding





## Usage
```r
sym %<-active% value
```




## Arguments


Argument      |Description
------------- |----------------
sym | symbol to bind
value | A function to call when the value of ``sym`` is accessed.




## Details

Active bindings defined in a `%py_class%` are converted to
@property decorated methods.





## Value

``value``, invisibly





## Examples
```r
set.seed(1234)
x %<-active% function(value) {
  message("Evaluating function of active binding")
  if(missing(value))
    runif(1)
  else
   message("Received: ", value)
}
x
x
x <- "foo"
x <- "foo"
x
rm(x) # cleanup
```




## See Also

`makeActiveBinding()`




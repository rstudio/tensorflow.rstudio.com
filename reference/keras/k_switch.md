# k_switch


Switches between two operations depending on a scalar value.




## Description

Note that both ``then_expression`` and ``else_expression``
should be symbolic tensors of the same shape.





## Usage
```r
k_switch(condition, then_expression, else_expression)
```




## Arguments


Argument      |Description
------------- |----------------
condition | tensor (``int`` or ``bool``).
then_expression | either a tensor, or a function that returns a tensor.
else_expression | either a tensor, or a function that returns a tensor.





## Value

The selected tensor.






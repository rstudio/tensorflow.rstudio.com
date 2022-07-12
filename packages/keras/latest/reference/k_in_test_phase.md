# k_in_test_phase


Selects ``x`` in test phase, and ``alt`` otherwise.




## Description

Note that ``alt`` should have the same shape as ``x``.





## Usage
```r
k_in_test_phase(x, alt, training = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
x | What to return in test phase (tensor or function that returns a tensor).
alt | What to return otherwise (tensor or function that returns a tensor).
training | Optional scalar tensor (or R logical or integer) specifying the learning phase.





## Value

Either ``x`` or ``alt`` based on ``k_learning_phase()``.






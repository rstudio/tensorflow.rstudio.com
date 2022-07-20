# k_in_train_phase


Selects ``x`` in train phase, and ``alt`` otherwise.




## Description

Note that ``alt`` should have the same shape as ``x``.





## Usage
```r
k_in_train_phase(x, alt, training = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
x | What to return in train phase (tensor or function that returns a tensor).
alt | What to return otherwise (tensor or function that returns a tensor).
training | Optional scalar tensor (or R logical or integer) specifying the learning phase.





## Value

Either ``x`` or ``alt`` based on the ``training`` flag. the ``training``
flag defaults to ``k_learning_phase()``.






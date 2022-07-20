# constraints


Weight constraints




## Description

Functions that impose constraints on weight values.





## Usage
```r
constraint_maxnorm(max_value = 2, axis = 0)

constraint_nonneg()

constraint_unitnorm(axis = 0)

constraint_minmaxnorm(min_value = 0, max_value = 1, rate = 1, axis = 0)
```




## Arguments


Argument      |Description
------------- |----------------
max_value | The maximum norm for the incoming weights.
axis | The axis along which to calculate weight norms. For instance, in a dense layer the weight matrix has shape input_dim, output_dim, set ``axis`` to ``0`` to constrain each weight vector of length input_dim,. In a convolution 2D layer with ``dim_ordering="tf"``, the weight tensor has shape rows, cols, input_depth, output_depth, set ``axis`` to ``c(0, 1, 2)`` to constrain the weights of each filter tensor of size rows, cols, input_depth.
min_value | The minimum norm for the incoming weights.
rate | The rate for enforcing the constraint: weights will be rescaled to yield (1 - rate) * norm + rate * norm.clip(low, high). Effectively, this means that rate=1.0 stands for strict enforcement of the constraint, while rate<1.0 means that weights will be rescaled at each step to slowly move towards a value inside the desired interval.




## Details



*  `constraint_maxnorm()` constrains the weights incident to each
hidden unit to have a norm less than or equal to a desired value.

*  `constraint_nonneg()` constraints the weights to be non-negative

*  `constraint_unitnorm()` constrains the weights incident to each hidden
unit to have unit norm.

*  `constraint_minmaxnorm()` constrains the weights incident to each
hidden unit to have the norm between a lower bound and an upper bound.








## See Also

https://www.cs.toronto.edu/~rsalakhu/papers/srivastava14a.pdfDropout: A Simple Way to Prevent Neural Networks from Overfitting Srivastava, Hinton, et al. 2014

KerasConstraint




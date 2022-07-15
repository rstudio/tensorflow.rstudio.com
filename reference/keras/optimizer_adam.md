# optimizer_adam


Adam optimizer




## Description

Adam optimizer as described in https://arxiv.org/abs/1412.6980v8Adam - A Method for Stochastic Optimization.





## Usage
```r
optimizer_adam(
  learning_rate = 0.001,
  beta_1 = 0.9,
  beta_2 = 0.999,
  epsilon = NULL,
  decay = 0,
  amsgrad = FALSE,
  clipnorm = NULL,
  clipvalue = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
learning_rate | float >= 0. Learning rate.
beta_1 | The exponential decay rate for the 1st moment estimates. float, 0 < beta < 1. Generally close to 1.
beta_2 | The exponential decay rate for the 2nd moment estimates. float, 0 < beta < 1. Generally close to 1.
epsilon | float >= 0. Fuzz factor. If ``NULL``, defaults to ``k_epsilon()``.
decay | float >= 0. Learning rate decay over each update.
amsgrad | Whether to apply the AMSGrad variant of this algorithm from the paper "On the Convergence of Adam and Beyond".
clipnorm | Gradients will be clipped when their L2 norm exceeds this value.
clipvalue | Gradients will be clipped when their absolute value exceeds this value.
... | Unused, present only for backwards compatability







## See Also

Other optimizers: 
`optimizer_adadelta()`,
`optimizer_adagrad()`,
`optimizer_adamax()`,
`optimizer_nadam()`,
`optimizer_rmsprop()`,
`optimizer_sgd()`



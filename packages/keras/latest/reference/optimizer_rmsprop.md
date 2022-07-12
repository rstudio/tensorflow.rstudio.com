# optimizer_rmsprop


RMSProp optimizer




## Description

RMSProp optimizer





## Usage
```r
optimizer_rmsprop(
  learning_rate = 0.001,
  rho = 0.9,
  epsilon = NULL,
  decay = 0,
  clipnorm = NULL,
  clipvalue = NULL,
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
learning_rate | float >= 0. Learning rate.
rho | float >= 0. Decay factor.
epsilon | float >= 0. Fuzz factor. If ``NULL``, defaults to ``k_epsilon()``.
decay | float >= 0. Learning rate decay over each update.
clipnorm | Gradients will be clipped when their L2 norm exceeds this value.
clipvalue | Gradients will be clipped when their absolute value exceeds this value.
... | Unused, present only for backwards compatability







## See Also

Other optimizers: 
`optimizer_adadelta()`,
`optimizer_adagrad()`,
`optimizer_adamax()`,
`optimizer_adam()`,
`optimizer_nadam()`,
`optimizer_sgd()`




# optimizer_adagrad


Adagrad optimizer.




## Description

Adagrad optimizer as described in https://www.jmlr.org/papers/volume12/duchi11a/duchi11a.pdfAdaptive Subgradient Methods for Online Learning and Stochastic Optimization.





## Usage
```r
optimizer_adagrad(
  learning_rate = 0.01,
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
epsilon | float >= 0. Fuzz factor. If ``NULL``, defaults to ``k_epsilon()``.
decay | float >= 0. Learning rate decay over each update.
clipnorm | Gradients will be clipped when their L2 norm exceeds this value.
clipvalue | Gradients will be clipped when their absolute value exceeds this value.
... | Unused, present only for backwards compatability







## See Also

Other optimizers: 
`optimizer_adadelta()`,
`optimizer_adamax()`,
`optimizer_adam()`,
`optimizer_nadam()`,
`optimizer_rmsprop()`,
`optimizer_sgd()`




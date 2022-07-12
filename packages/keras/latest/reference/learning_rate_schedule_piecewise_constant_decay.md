# learning_rate_schedule_piecewise_constant_decay


A LearningRateSchedule that uses a piecewise constant decay schedule




## Description

A LearningRateSchedule that uses a piecewise constant decay schedule





## Usage
```r
learning_rate_schedule_piecewise_constant_decay(
  boundaries,
  values,
  ...,
  name = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
boundaries | A list of ``Tensor``s or R numerics with strictly increasing entries, and with all elements having the same type as the optimizer step.
values | A list of ``Tensor``s or R numerics that specifies the values for the intervals defined by ``boundaries``. It should have one more element than ``boundaries``, and all elements should have the same type.
... | For backwards and forwards compatibility
name | A string. Optional name of the operation. Defaults to 'PiecewiseConstant'.




## Details

The function returns a 1-arg callable to compute the piecewise constant
when passed the current optimizer step. This can be useful for changing the
learning rate value across different invocations of optimizer functions.

Example: use a learning rate that's 1.0 for the first 100001 steps, 0.5
for the next 10000 steps, and 0.1 for any additional steps.

html<div class="sourceCode R">step <- tf$Variable(0, trainable=FALSE)
boundaries <- as.integer(c(100000, 110000))
values <- c(1.0, 0.5, 0.1)
learning_rate_fn <- learning_rate_schedule_piecewise_constant_decay(
    boundaries, values)

# Later, whenever we perform an optimization step, we pass in the step.
learning_rate <- learning_rate_fn(step)
html</div>

You can pass this schedule directly into a keras Optimizer
as the ``learning_rate``.







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/optimizers/schedules/PiecewiseConstantDecay





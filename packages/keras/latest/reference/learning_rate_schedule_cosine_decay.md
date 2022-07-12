# learning_rate_schedule_cosine_decay


A LearningRateSchedule that uses a cosine decay schedule




## Description

A LearningRateSchedule that uses a cosine decay schedule





## Usage
```r
learning_rate_schedule_cosine_decay(
  initial_learning_rate,
  decay_steps,
  alpha = 0,
  ...,
  name = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
initial_learning_rate | A scalar ``float32`` or ``float64`` Tensor or a R number. The initial learning rate.
decay_steps | A scalar ``int32`` or ``int64`` ``Tensor`` or an R number. Number of steps to decay over.
alpha | A scalar ``float32`` or ``float64`` Tensor or an R number. Minimum learning rate value as a fraction of initial_learning_rate.
... | For backwards and forwards compatibility
name | String. Optional name of the operation.  Defaults to 'CosineDecay'.




## Details

See https://arxiv.org/abs/1608.03983Loshchilov & Hutter, ICLR2016,
SGDR: Stochastic Gradient Descent with Warm Restarts.

When training a model, it is often useful to lower the learning rate as
the training progresses. This schedule applies a cosine decay function
to an optimizer step, given a provided initial learning rate.
It requires a ``step`` value to compute the decayed learning rate. You can
just pass a TensorFlow variable that you increment at each training step.

The schedule is a 1-arg callable that produces a decayed learning
rate when passed the current optimizer step. This can be useful for changing
the learning rate value across different invocations of optimizer functions.
It is computed as:

html<div class="sourceCode r">decayed_learning_rate <- function(step) {
  step <- min(step, decay_steps)
  cosine_decay = <- 0.5 * (1 + cos(pi * step / decay_steps))
  decayed <- (1 - alpha) * cosine_decay + alpha
  initial_learning_rate * decayed
}
html</div>

Example usage:

html<div class="sourceCode R">decay_steps <- 1000
lr_decayed_fn <-
  learning_rate_schedule_cosine_decay(initial_learning_rate, decay_steps)
html</div>

You can pass this schedule directly into a keras Optimizer
as the ``learning_rate``.







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/optimizers/schedules/CosineDecay





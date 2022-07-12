# learning_rate_schedule_inverse_time_decay


A LearningRateSchedule that uses an inverse time decay schedule




## Description

A LearningRateSchedule that uses an inverse time decay schedule





## Usage
```r
learning_rate_schedule_inverse_time_decay(
  initial_learning_rate,
  decay_steps,
  decay_rate,
  staircase = FALSE,
  ...,
  name = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
initial_learning_rate | A scalar ``float32`` or ``float64`` ``Tensor`` or an R number. The initial learning rate.
decay_steps | A scalar ``int32`` or ``int64`` ``Tensor`` or an R number. How often to apply decay.
decay_rate | An R number. The decay rate.
staircase | Boolean. Whether to apply decay in a discrete staircase, as opposed to continuous, fashion.
... | For backwards and forwards compatibility
name | String.  Optional name of the operation.  Defaults to 'InverseTimeDecay'.




## Details

When training a model, it is often useful to lower the learning rate as
the training progresses. This schedule applies the inverse decay function
to an optimizer step, given a provided initial learning rate.
It requires a ``step`` value to compute the decayed learning rate. You can
just pass a TensorFlow variable that you increment at each training step.

The schedule is a 1-arg callable that produces a decayed learning
rate when passed the current optimizer step. This can be useful for changing
the learning rate value across different invocations of optimizer functions.
It is computed as:

html<div class="sourceCode R">decayed_learning_rate <- function(step) {
  initial_learning_rate / (1 + decay_rate * step / decay_step)
}
html</div>

or, if ``staircase`` is ``TRUE``, as:

html<div class="sourceCode R">decayed_learning_rate function(step) {
 initial_learning_rate / (1 + decay_rate * floor(step / decay_step))
}
html</div>

You can pass this schedule directly into a keras Optimizer
as the ``learning_rate``.

Example: Fit a Keras model when decaying ``1/t`` with a rate of ``0.5``:

html<div class="sourceCode R">...
initial_learning_rate <- 0.1
decay_steps <- 1.0
decay_rate <- 0.5
learning_rate_fn <- learning_rate_schedule_inverse_time_decay(
  initial_learning_rate, decay_steps, decay_rate)

model %>%
  compile(optimizer = optimizer_sgd(learning_rate = learning_rate_fn),
          loss = 'sparse_categorical_crossentropy',
          metrics = 'accuracy')

model %>% fit(data, labels, epochs = 5)
html</div>







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/optimizers/schedules/InverseTimeDecay





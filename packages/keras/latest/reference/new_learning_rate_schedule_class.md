# new_learning_rate_schedule_class


Create a new learning rate schedule type




## Description

Create a new learning rate schedule type





## Usage
```r
new_learning_rate_schedule_class(
  classname,
  ...,
  initialize = NULL,
  call,
  get_config = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
classname | string
... | methods and properties of the schedule class
initialize, get_config | Additional recommended methods to implement.   *  https://www.tensorflow.org/api_docs/python/tf/keras/optimizers/schedules/LearningRateSchedule
call | function which takes a step argument (scalar integer tensor, the current training step count, and returns the new learning rate). For tracking additional state, objects ``self`` and ``private`` are automatically injected into the scope of the function.





## Value

A ``LearningRateSchedule`` class generator.






# k_rnn


Iterates over the time dimension of a tensor




## Description

Iterates over the time dimension of a tensor





## Usage
```r
k_rnn(
  step_function,
  inputs,
  initial_states,
  go_backwards = FALSE,
  mask = NULL,
  constants = NULL,
  unroll = FALSE,
  input_length = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
step_function | RNN step function.
inputs | Tensor with shape (samples, ...) (no time dimension), representing input for the batch of samples at a certain time step.
initial_states | Tensor with shape (samples, output_dim) (no time dimension), containing the initial values for the states used in the step function.
go_backwards | Logical If ``TRUE``, do the iteration over the time dimension in reverse order and return the reversed sequence.
mask | Binary tensor with shape (samples, time, 1), with a zero for every element that is masked.
constants | A list of constant values passed at each step.
unroll | Whether to unroll the RNN or to use a symbolic loop (while_loop or scan depending on backend).
input_length | Not relevant in the TensorFlow implementation. Must be specified if using unrolling with Theano.





## Value

A list with:


*  `last_output`: the latest output of the rnn, of shape (samples, ...)

*  `outputs`: tensor with shape (samples, time, ...) where each entry
`outputs[s, t]` is the output of the step function at time t for sample s.

*  `new_states`: list of tensors, latest states returned by the step
function, of shape (samples, ...).







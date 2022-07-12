# k_ctc_batch_cost


Runs CTC loss algorithm on each batch element.




## Description

Runs CTC loss algorithm on each batch element.





## Usage
```r
k_ctc_batch_cost(y_true, y_pred, input_length, label_length)
```




## Arguments


Argument      |Description
------------- |----------------
y_true | tensor (samples, max_string_length) containing the truth labels.
y_pred | tensor (samples, time_steps, num_categories) containing the prediction, or output of the softmax.
input_length | tensor (samples, 1) containing the sequence length for each batch item in ``y_pred``.
label_length | tensor (samples, 1) containing the sequence length for each batch item in ``y_true``.





## Value

Tensor with shape (samples,1) containing the CTC loss of each
element.






# k_ctc_decode


Decodes the output of a softmax.




## Description

Can use either greedy search (also known as best path) or a constrained
dictionary search.





## Usage
```r
k_ctc_decode(
  y_pred,
  input_length,
  greedy = TRUE,
  beam_width = 100L,
  top_paths = 1
)
```




## Arguments


Argument      |Description
------------- |----------------
y_pred | tensor (samples, time_steps, num_categories) containing the prediction, or output of the softmax.
input_length | tensor (samples, ) containing the sequence length for each batch item in ``y_pred``.
greedy | perform much faster best-path search if ``TRUE``. This does not use a dictionary.
beam_width | if ``greedy`` is ``FALSE``: a beam search decoder will be used with a beam of this width.
top_paths | if ``greedy`` is ``FALSE``, how many of the most probable paths will be returned.





## Value

If ``greedy`` is ``TRUE``, returns a list of one element
that contains the decoded sequence. If ``FALSE``, returns the ``top_paths``
most probable decoded sequences. Important: blank labels are returned as
``-1``. Tensor ``(top_paths)`` that contains the log probability of each
decoded sequence.






# metric_top_k_categorical_accuracy


Computes how often targets are in the top ``K`` predictions




## Description

Computes how often targets are in the top ``K`` predictions





## Usage
```r
metric_top_k_categorical_accuracy(
  y_true,
  y_pred,
  k = 5L,
  ...,
  name = "top_k_categorical_accuracy",
  dtype = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
y_true | Tensor of true targets.
y_pred | Tensor of predicted targets.
k | (Optional) Number of top elements to look at for computing accuracy. Defaults to 5.
... | Passed on to the underlying metric. Used for forwards and backwards compatibility.
name | (Optional) string name of the metric instance.
dtype | (Optional) data type of the metric result.





## Value

If ``y_true`` and ``y_pred`` are missing, a (subclassed) ``Metric``
instance is returned. The ``Metric`` object can be passed directly to
``compile(metrics = )`` or used as a standalone object. See ``?Metric`` for
example usage.

Alternatively, if called with ``y_true`` and ``y_pred`` arguments, then the
computed case-wise values for the mini-batch are returned directly.






## See Also

Other metrics: 
`custom_metric()`,
`metric_accuracy()`,
`metric_auc()`,
`metric_binary_accuracy()`,
`metric_binary_crossentropy()`,
`metric_categorical_accuracy()`,
`metric_categorical_crossentropy()`,
`metric_categorical_hinge()`,
`metric_cosine_similarity()`,
`metric_false_negatives()`,
`metric_false_positives()`,
`metric_hinge()`,
`metric_kullback_leibler_divergence()`,
`metric_logcosh_error()`,
`metric_mean_absolute_error()`,
`metric_mean_absolute_percentage_error()`,
`metric_mean_iou()`,
`metric_mean_relative_error()`,
`metric_mean_squared_error()`,
`metric_mean_squared_logarithmic_error()`,
`metric_mean_tensor()`,
`metric_mean_wrapper()`,
`metric_mean()`,
`metric_poisson()`,
`metric_precision_at_recall()`,
`metric_precision()`,
`metric_recall_at_precision()`,
`metric_recall()`,
`metric_root_mean_squared_error()`,
`metric_sensitivity_at_specificity()`,
`metric_sparse_categorical_accuracy()`,
`metric_sparse_categorical_crossentropy()`,
`metric_sparse_top_k_categorical_accuracy()`,
`metric_specificity_at_sensitivity()`,
`metric_squared_hinge()`,
`metric_sum()`,
`metric_true_negatives()`,
`metric_true_positives()`




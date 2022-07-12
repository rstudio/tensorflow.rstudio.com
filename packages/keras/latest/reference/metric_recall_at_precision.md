# metric_recall_at_precision


Computes best recall where precision is >= specified value




## Description

Computes best recall where precision is >= specified value





## Usage
```r
metric_recall_at_precision(
  ...,
  precision,
  num_thresholds = 200L,
  class_id = NULL,
  name = NULL,
  dtype = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
... | Passed on to the underlying metric. Used for forwards and backwards compatibility.
precision | A scalar value in range [0, 1].
num_thresholds | (Optional) Defaults to 200. The number of thresholds to use for matching the given precision.
class_id | (Optional) Integer class ID for which we want binary metrics. This must be in the half-open interval [0, num_classes), where ``num_classes`` is the last dimension of predictions.
name | (Optional) string name of the metric instance.
dtype | (Optional) data type of the metric result.




## Details

For a given score-label-distribution the required precision might
not be achievable, in this case 0.0 is returned as recall.

This metric creates four local variables, ``true_positives``, ``true_negatives``,
``false_positives`` and ``false_negatives`` that are used to compute the recall
at the given precision. The threshold for the given precision value is
computed and used to evaluate the corresponding recall.

If ``sample_weight`` is ``NULL``, weights default to 1. Use ``sample_weight`` of 0
to mask values.

If ``class_id`` is specified, we calculate precision by considering only the
entries in the batch for which ``class_id`` is above the threshold predictions,
and computing the fraction of them for which ``class_id`` is indeed a correct
label.





## Value

A (subclassed) ``Metric`` instance that can be passed directly to
``compile(metrics = )``, or used as a standalone object. See ``?Metric`` for
example usage.






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
`metric_recall()`,
`metric_root_mean_squared_error()`,
`metric_sensitivity_at_specificity()`,
`metric_sparse_categorical_accuracy()`,
`metric_sparse_categorical_crossentropy()`,
`metric_sparse_top_k_categorical_accuracy()`,
`metric_specificity_at_sensitivity()`,
`metric_squared_hinge()`,
`metric_sum()`,
`metric_top_k_categorical_accuracy()`,
`metric_true_negatives()`,
`metric_true_positives()`




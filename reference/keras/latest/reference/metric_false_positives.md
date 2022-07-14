# metric_false_positives


Calculates the number of false positives




## Description

Calculates the number of false positives





## Usage
```r
metric_false_positives(..., thresholds = NULL, name = NULL, dtype = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
... | Passed on to the underlying metric. Used for forwards and backwards compatibility.
thresholds | (Optional) Defaults to 0.5. A float value or a list of float threshold values in [0, 1]. A threshold is compared with prediction values to determine the truth value of predictions (i.e., above the threshold is ``true``, below is ``false``). One metric value is generated for each threshold value.
name | (Optional) string name of the metric instance.
dtype | (Optional) data type of the metric result.




## Details

If ``sample_weight`` is given, calculates the sum of the weights of
false positives. This metric creates one local variable, ``accumulator``
that is used to keep track of the number of false positives.

If ``sample_weight`` is ``NULL``, weights default to 1.
Use ``sample_weight`` of 0 to mask values.





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
`metric_top_k_categorical_accuracy()`,
`metric_true_negatives()`,
`metric_true_positives()`




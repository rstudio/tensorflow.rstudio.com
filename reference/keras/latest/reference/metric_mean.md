# metric_mean


Computes the (weighted) mean of the given values




## Description

Computes the (weighted) mean of the given values





## Usage
```r
metric_mean(..., name = "mean", dtype = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
... | Passed on to the underlying metric. Used for forwards and backwards compatibility.
name | (Optional) string name of the metric instance.
dtype | (Optional) data type of the metric result.




## Details

For example, if values is ``c(1, 3, 5, 7)`` then the mean is 4.
If the weights were specified as ``c(1, 1, 0, 0)`` then the mean would be 2.

This metric creates two variables, ``total`` and ``count`` that are used to
compute the average of ``values``. This average is ultimately returned as ``mean``
which is an idempotent operation that simply divides ``total`` by ``count``.

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




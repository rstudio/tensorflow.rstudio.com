# metric_logcosh_error


Computes the logarithm of the hyperbolic cosine of the prediction error




## Description

``logcosh = log((exp(x) + exp(-x))/2)``, where x is the error (``y_pred - y_true``)





## Usage
```r
metric_logcosh_error(..., name = "logcosh", dtype = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
... | Passed on to the underlying metric. Used for forwards and backwards compatibility.
name | (Optional) string name of the metric instance.
dtype | (Optional) data type of the metric result.





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



# metric-or-Metric


metric-or-Metric




## Description

metric-or-Metric






## Arguments


Argument      |Description
------------- |----------------
y_true | Tensor of true targets.
y_pred | Tensor of predicted targets.
... | Passed on to the underlying metric. Used for forwards and backwards compatibility.
axis | (Optional) (1-based) Defaults to -1. The dimension along which the metric is computed.
name | (Optional) string name of the metric instance.
dtype | (Optional) data type of the metric result.





## Value

If ``y_true`` and ``y_pred`` are missing, a (subclassed) ``Metric``
instance is returned. The ``Metric`` object can be passed directly to
``compile(metrics = )`` or used as a standalone object. See ``?Metric`` for
example usage.

Alternatively, if called with ``y_true`` and ``y_pred`` arguments, then the
computed case-wise values for the mini-batch are returned directly.






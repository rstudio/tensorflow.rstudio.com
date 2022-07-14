# Metric


Metric




## Description

A ``Metric`` object encapsulates metric logic and state that can be used to
track model performance during training. It is what is returned by the family
of metric functions that start with prefix metric_*.






## Arguments


Argument      |Description
------------- |----------------
name | (Optional) string name of the metric instance.
dtype | (Optional) data type of the metric result.





## Value

A (subclassed) ``Metric`` instance that can be passed directly to
``compile(metrics = )``, or used as a standalone object. See ``?Metric`` for
example usage.






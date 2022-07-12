# train_on_batch


Single gradient update or model evaluation over one batch of samples.




## Description

Single gradient update or model evaluation over one batch of samples.





## Usage
```r
train_on_batch(object, x, y, class_weight = NULL, sample_weight = NULL)

test_on_batch(object, x, y, sample_weight = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
object | Keras model object
x | input data, as an array or list of arrays (if the model has multiple inputs).
y | labels, as an array.
class_weight | named list mapping classes to a weight value, used for scaling the loss function (during training only).
sample_weight | sample weights, as an array.





## Value

Scalar training or test loss (if the model has no metrics) or list of scalars
(if the model computes other metrics). The property ``model$metrics_names``
will give you the display labels for the scalar outputs.






## See Also

Other model functions: 
`compile.keras.engine.training.Model()`,
`evaluate.keras.engine.training.Model()`,
`evaluate_generator()`,
`fit.keras.engine.training.Model()`,
`fit_generator()`,
`get_config()`,
`get_layer()`,
`keras_model_sequential()`,
`keras_model()`,
`multi_gpu_model()`,
`pop_layer()`,
`predict.keras.engine.training.Model()`,
`predict_generator()`,
`predict_on_batch()`,
`predict_proba()`,
`summary.keras.engine.training.Model()`




# predict_on_batch


Returns predictions for a single batch of samples.




## Description

Returns predictions for a single batch of samples.





## Usage
```r
predict_on_batch(object, x)
```




## Arguments


Argument      |Description
------------- |----------------
object | Keras model object
x | Input data (vector, matrix, or array). You can also pass a ``tfdataset`` or a generator returning a list with (inputs, targets) or (inputs, targets, sample_weights).





## Value

array of predictions.






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
`predict_proba()`,
`summary.keras.engine.training.Model()`,
`train_on_batch()`




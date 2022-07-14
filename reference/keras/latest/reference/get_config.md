# get_config


Layer/Model configuration




## Description

A layer config is an object returned from ``get_config()`` that contains the
configuration of a layer or model. The same layer or model can be
reinstantiated later (without its trained weights) from this configuration
using ``from_config()``. The config does not include connectivity information,
nor the class name (those are handled externally).





## Usage
```r
get_config(object)

from_config(config)
```




## Arguments


Argument      |Description
------------- |----------------
object | Layer or model object
config | Object with layer or model configuration





## Value

``get_config()`` returns an object with the configuration,
``from_config()`` returns a re-instantiation of the object.






## See Also

Other model functions: 
`compile.keras.engine.training.Model()`,
`evaluate.keras.engine.training.Model()`,
`evaluate_generator()`,
`fit.keras.engine.training.Model()`,
`fit_generator()`,
`get_layer()`,
`keras_model_sequential()`,
`keras_model()`,
`multi_gpu_model()`,
`pop_layer()`,
`predict.keras.engine.training.Model()`,
`predict_generator()`,
`predict_on_batch()`,
`predict_proba()`,
`summary.keras.engine.training.Model()`,
`train_on_batch()`

Other layer methods: 
`count_params()`,
`get_input_at()`,
`get_weights()`,
`reset_states()`




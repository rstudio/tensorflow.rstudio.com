# keras_model_sequential


Keras Model composed of a linear stack of layers




## Description

Keras Model composed of a linear stack of layers





## Usage
```r
keras_model_sequential(layers = NULL, name = NULL, ...)
```




## Arguments


Argument      |Description
------------- |----------------
layers | List of layers to add to the model
name | Name of model
... |    Arguments passed on to `sequential_model_input_layer`         *       *       *       *       *       *       *       *    






## Examples

```r


library(keras)

model <- keras_model_sequential()
model %>%
  layer_dense(units = 32, input_shape = c(784)) %>%
  layer_activation('relu') %>%
  layer_dense(units = 10) %>%
  layer_activation('softmax')

model %>% compile(
  optimizer = 'rmsprop',
  loss = 'categorical_crossentropy',
  metrics = c('accuracy')
)

# alternative way to provide input shape
model <- keras_model_sequential(input_shape = c(784)) %>%
  layer_dense(units = 32) %>%
  layer_activation('relu') %>%
  layer_dense(units = 10) %>%
  layer_activation('softmax')


```





## See Also

Other model functions: 
`compile.keras.engine.training.Model()`,
`evaluate.keras.engine.training.Model()`,
`evaluate_generator()`,
`fit.keras.engine.training.Model()`,
`fit_generator()`,
`get_config()`,
`get_layer()`,
`keras_model()`,
`multi_gpu_model()`,
`pop_layer()`,
`predict.keras.engine.training.Model()`,
`predict_generator()`,
`predict_on_batch()`,
`predict_proba()`,
`summary.keras.engine.training.Model()`,
`train_on_batch()`




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

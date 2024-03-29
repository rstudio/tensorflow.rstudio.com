library(keras) 
# input layer 
inputs <- layer_input(shape = c(784)) 
# outputs compose input + dense layers 
predictions <- inputs %>% 
  layer_dense(units = 64, activation = 'relu') %>% 
  layer_dense(units = 64, activation = 'relu') %>% 
  layer_dense(units = 10, activation = 'softmax') 
# create and compile model 
model <- keras_model(inputs = inputs, outputs = predictions) 
model %>% compile( 
  optimizer = 'rmsprop', 
  loss = 'categorical_crossentropy', 
  metrics = c('accuracy') 
) 

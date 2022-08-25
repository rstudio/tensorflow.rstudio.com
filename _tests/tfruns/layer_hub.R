library(keras) 
model <- keras_model_sequential() %>% 
 layer_hub( 
   handle = "https://tfhub.dev/google/tf2-preview/mobilenet_v2/feature_vector/4", 
   input_shape = c(224, 224, 3) 
 ) %>% 
 layer_dense(1) 

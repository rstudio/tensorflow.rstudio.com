library(keras) 
model <- application_vgg16(weights = 'imagenet', include_top = FALSE) 
img_path <- "elephant.jpg" 
img <- image_load(img_path, target_size = c(224,224)) 
x <- image_to_array(img) 
x <- array_reshape(x, c(1, dim(x))) 
x <- imagenet_preprocess_input(x) 
features <- model %>% predict(x) 

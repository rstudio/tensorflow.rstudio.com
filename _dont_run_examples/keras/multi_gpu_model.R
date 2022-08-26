library(keras) 
library(tensorflow) 
num_samples <- 1000 
height <- 224 
width <- 224 
num_classes <- 1000 
# Instantiate the base model (or "template" model). 
# We recommend doing this with under a CPU device scope, 
# so that the model's weights are hosted on CPU memory. 
# Otherwise they may end up hosted on a GPU, which would 
# complicate weight sharing. 
with(tf$device("/cpu:0"), { 
  model <- application_xception( 
    weights = NULL, 
    input_shape = c(height, width, 3), 
    classes = num_classes 
  ) 
}) 
# Replicates the model on 8 GPUs. 
# This assumes that your machine has 8 available GPUs. 
parallel_model <- multi_gpu_model(model, gpus = 8) 
parallel_model %>% compile( 
  loss = "categorical_crossentropy", 
  optimizer = "rmsprop" 
) 
# Generate dummy data. 
x <- array(runif(num_samples * height * width*3), 
           dim = c(num_samples, height, width, 3)) 
y <- array(runif(num_samples * num_classes), 
           dim = c(num_samples, num_classes)) 
# This `fit` call will be distributed on 8 GPUs. 
# Since the batch size is 256, each GPU will process 32 samples. 
parallel_model %>% fit(x, y, epochs = 20, batch_size = 256) 
# Save model via the template model (which shares the same weights): 
model %>% save_model_hdf5("my_model.h5") 

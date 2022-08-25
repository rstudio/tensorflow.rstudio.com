# define custom metric 
metric_top_3_categorical_accuracy <- 
  custom_metric("top_3_categorical_accuracy", function(y_true, y_pred) { 
    metric_top_k_categorical_accuracy(y_true, y_pred, k = 3) 
  }) 
with_custom_object_scope(c(top_k_acc = sparse_top_k_cat_acc), { 
  # ...define model... 
  # compile model (refer to "top_k_acc" by name) 
  model %>% compile( 
    loss = "binary_crossentropy", 
    optimizer = optimizer_nadam(), 
    metrics = c("top_k_acc") 
  ) 
  # save the model 
  save_model_hdf5("my_model.h5") 
  # loading the model within the custom object scope doesn't 
  # require explicitly providing the custom_object 
  load_model_hdf5("my_model.h5") 
}) 

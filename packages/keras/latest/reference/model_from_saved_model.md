# model_from_saved_model


Load a Keras model from the Saved Model format




## Description

Load a Keras model from the Saved Model format





## Usage
```r
model_from_saved_model(saved_model_path, custom_objects = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
saved_model_path | a string specifying the path to the SavedModel directory.
custom_objects | Optional dictionary mapping string names to custom classes or functions (e.g. custom loss functions).





## Value

a Keras model.






## See Also

Other saved_model: 
`model_to_saved_model()`




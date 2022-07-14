# create_layer_wrapper


Create a Keras Layer wrapper




## Description

Create a Keras Layer wrapper





## Usage
```r
create_layer_wrapper(Layer, modifiers = NULL, convert = TRUE)
```




## Arguments


Argument      |Description
------------- |----------------
Layer | A R6 or Python class generator that inherits from ``keras$layers$Layer``
modifiers | A named list of functions to modify to user-supplied arguments before they are passed on to the class constructor. (e.g., ``list(units = as.integer)``)
convert | Boolean, whether the Python class and its methods should by default convert python objects to R objects.  See guide 'making_new_layers_and_models_via_subclassing.Rmd' for example usage.





## Value

An R function that behaves similarly to the builtin keras layer_*
functions. When called, it will create the class instance, and also
optionally call it on a supplied argument ``object`` if it is present. This
enables keras layers to compose nicely with the pipe (%>%).

The R function will arguments taken from the ``initialize`` (or __init__)
method of the Layer.

If Layer is an R6 object, this will delay initializing the python
session, so it is safe to use in an R package.






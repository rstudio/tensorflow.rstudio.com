# plot.keras.engine.training.Model


Plot a Keras model




## Description

Plot a Keras model





## Usage

plotkeras.engine.training.Model(
  x,
  show_shapes = FALSE,
  show_dtype = FALSE,
  show_layer_names = TRUE,
  ...,
  rankdir = "TB",
  expand_nested = FALSE,
  dpi = 96,
  layer_range = NULL,
  show_layer_activations = FALSE,
  to_file = NULL
)





## Arguments


Argument      |Description
------------- |----------------
x | A Keras model instance
show_shapes | whether to display shape information.
show_dtype | whether to display layer dtypes.
show_layer_names | whether to display layer names.
... | passed on to ``keras$utils$plot_model()``. Used for forward and backward compatibility.
rankdir | a string specifying the format of the plot: ``'TB'`` creates a vertical plot; ``'LR'`` creates a horizontal plot. (argument passed to PyDot)
expand_nested | Whether to expand nested models into clusters.
dpi | Dots per inch. Increase this value if the image text appears excessively pixelated.
layer_range | ``list`` containing two character strings, which is the starting layer name and ending layer name (both inclusive) indicating the range of layers for which the plot will be generated. It also accepts regex patterns instead of exact name. In such case, start predicate will be the first element it matches to ``layer_range[1]`` and the end predicate will be the last element it matches to ``layer_range[2]``. By default ``NULL`` which considers all layers of model. Note that you must pass range such that the resultant subgraph must be complete.
show_layer_activations | Display layer activations (only for layers that have an ``activation`` property).
to_file | File name of the plot image. If ``NULL`` (the default), the model is drawn on the default graphics device. Otherwise, a file is saved.





## Value

Nothing, called for it's side effects.






# create_layer


Create a Keras Layer




## Description

Create a Keras Layer





## Usage
```r
create_layer(layer_class, object, args = list())
```




## Arguments


Argument      |Description
------------- |----------------
layer_class | Python layer class or R6 class of type KerasLayer
object | Object to compose layer with. This is either a `keras_model_sequential()` to add the layer to, or another Layer which this layer will call.
args | List of arguments to layer constructor function





## Value

A Keras layer






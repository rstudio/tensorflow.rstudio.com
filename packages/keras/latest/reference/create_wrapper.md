# create_wrapper


(Deprecated) Create a Keras Wrapper




## Description

R6 classes that inherit from ``keras$layers$Wrapper`` can now be instantiated
directly by ``create_layer``





## Usage
```r
create_wrapper(wrapper_class, object, args = list())
```




## Arguments


Argument      |Description
------------- |----------------
wrapper_class | R6 class of type KerasWrapper
object | Object to compose layer with. This is either a `keras_model_sequential()` to add the layer to, or another Layer which this layer will call.
args | List of arguments to layer constructor function





## Value

A Keras wrapper






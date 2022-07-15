# implementation


Keras implementation




## Description

Obtain a reference to the Python module used for the implementation of Keras.





## Usage
```r
implementation()
```




## Details

There are currently two Python modules which implement Keras:


*  keras ("keras")

*  tensorflow.keras ("tensorflow")


This function returns a reference to the implementation being currently
used by the keras package. The default implementation is "keras".
You can override this by setting the ``KERAS_IMPLEMENTATION`` environment
variable to "tensorflow".





## Value

Reference to the Python module used for the implementation of Keras.






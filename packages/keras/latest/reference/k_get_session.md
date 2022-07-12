# k_get_session


TF session to be used by the backend.




## Description

If a default TensorFlow session is available, we will return it. Else, we
will return the global Keras session. If no global Keras session exists at
this point: we will create a new global session. Note that you can manually
set the global session via ``k_set_session()``.





## Usage
```r
k_get_session()

k_set_session(session)
```




## Arguments


Argument      |Description
------------- |----------------
session | A TensorFlow Session.





## Value

A TensorFlow session






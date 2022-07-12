# KerasConstraint


(Deprecated) Base R6 class for Keras constraints




## Description

New custom constraints are encouraged to subclass ``keras$constraints$Constraint`` directly.






## Details

You can implement a custom constraint either by creating an
R function that accepts a weights (``w``) parameter, or by creating
an R6 class that derives from ``KerasConstraint`` and implements a
``call`` method.






## Examples

```r

CustomNonNegConstraint <- R6::R6Class(
  "CustomNonNegConstraint",
  inherit = KerasConstraint,
  public = list(
    call = function(x) {
       w * k_cast(k_greater_equal(w, 0), k_floatx())
    }
  )
)

layer_dense(units = 32, input_shape = c(784),
            kernel_constraint = CustomNonNegConstraint$new())

```






## See Also

constraints




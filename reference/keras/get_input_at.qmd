# get_input_at


Retrieve tensors for layers with multiple nodes




## Description

Whenever you are calling a layer on some input, you are creating a new tensor
(the output of the layer), and you are adding a "node" to the layer, linking
the input tensor to the output tensor. When you are calling the same layer
multiple times, that layer owns multiple nodes indexed as 1, 2, 3. These
functions enable you to retrieve various tensor properties of layers with
multiple nodes.





## Usage
```r
get_input_at(object, node_index)

get_output_at(object, node_index)

get_input_shape_at(object, node_index)

get_output_shape_at(object, node_index)

get_input_mask_at(object, node_index)

get_output_mask_at(object, node_index)
```




## Arguments


Argument      |Description
------------- |----------------
object | Layer or model object
node_index | Integer, index of the node from which to retrieve the attribute. E.g. ``node_index = 1`` will correspond to the first time the layer was called.





## Value

A tensor (or list of tensors if the layer has multiple inputs/outputs).






## See Also

Other layer methods: 
`count_params()`,
`get_config()`,
`get_weights()`,
`reset_states()`




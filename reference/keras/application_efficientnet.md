# application_efficientnet


Instantiates the EfficientNetB0 architecture




## Description

Instantiates the EfficientNetB0 architecture





## Usage
```r
application_efficientnet_b0(
  include_top = TRUE,
  weights = "imagenet",
  input_tensor = NULL,
  input_shape = NULL,
  pooling = NULL,
  classes = 1000L,
  classifier_activation = "softmax",
  ...
)

application_efficientnet_b1(
  include_top = TRUE,
  weights = "imagenet",
  input_tensor = NULL,
  input_shape = NULL,
  pooling = NULL,
  classes = 1000L,
  classifier_activation = "softmax",
  ...
)

application_efficientnet_b2(
  include_top = TRUE,
  weights = "imagenet",
  input_tensor = NULL,
  input_shape = NULL,
  pooling = NULL,
  classes = 1000L,
  classifier_activation = "softmax",
  ...
)

application_efficientnet_b3(
  include_top = TRUE,
  weights = "imagenet",
  input_tensor = NULL,
  input_shape = NULL,
  pooling = NULL,
  classes = 1000L,
  classifier_activation = "softmax",
  ...
)

application_efficientnet_b4(
  include_top = TRUE,
  weights = "imagenet",
  input_tensor = NULL,
  input_shape = NULL,
  pooling = NULL,
  classes = 1000L,
  classifier_activation = "softmax",
  ...
)

application_efficientnet_b5(
  include_top = TRUE,
  weights = "imagenet",
  input_tensor = NULL,
  input_shape = NULL,
  pooling = NULL,
  classes = 1000L,
  classifier_activation = "softmax",
  ...
)

application_efficientnet_b6(
  include_top = TRUE,
  weights = "imagenet",
  input_tensor = NULL,
  input_shape = NULL,
  pooling = NULL,
  classes = 1000L,
  classifier_activation = "softmax",
  ...
)

application_efficientnet_b7(
  include_top = TRUE,
  weights = "imagenet",
  input_tensor = NULL,
  input_shape = NULL,
  pooling = NULL,
  classes = 1000L,
  classifier_activation = "softmax",
  ...
)
```




## Arguments


Argument      |Description
------------- |----------------
include_top | Whether to include the fully-connected layer at the top of the network. Defaults to ``TRUE``.
weights | One of ``NULL`` (random initialization), ``'imagenet'`` (pre-training on ImageNet), or the path to the weights file to be loaded. Defaults to ``'imagenet'``.
input_tensor | Optional Keras tensor (i.e. output of ``layer_input()``) to use as image input for the model.
input_shape | Optional shape list, only to be specified if ``include_top`` is FALSE. It should have exactly 3 inputs channels.
pooling | Optional pooling mode for feature extraction when ``include_top`` is ``FALSE``. Defaults to ``NULL``.   *  `NULL` means that the output of the model will be the 4D tensor output of the last convolutional layer.  *  `'avg'` means that global average pooling will be applied to the output of the last convolutional layer, and thus the output of the model will be a 2D tensor.  *  `'max'` means that global max pooling will be applied.
classes | Optional number of classes to classify images into, only to be specified if ``include_top`` is TRUE, and if no ``weights`` argument is specified. Defaults to 1000 (number of ImageNet classes).
classifier_activation | A string or callable. The activation function to use on the "top" layer. Ignored unless ``include_top = TRUE``. Set ``classifier_activation = NULL`` to return the logits of the "top" layer. Defaults to ``'softmax'``. When loading pretrained weights, ``classifier_activation`` can only be ``NULL`` or ``"softmax"``.
... | For backwards and forwards compatibility




## Details

Reference:


*  https://arxiv.org/abs/1905.11946EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks (ICML 2019)


This function returns a Keras image classification model,
optionally loaded with weights pre-trained on ImageNet.

For image classification use cases, see
https://keras.io/api/applications/#usage-examples-for-image-classification-modelsthis page for detailed examples.

For transfer learning use cases, make sure to read the
https://keras.io/guides/transfer_learning/guide to transfer learning & fine-tuning.

EfficientNet models expect their inputs to be float tensors of pixels with values in the [0-255] range.







## See Also



*  https://www.tensorflow.org/api_docs/python/tf/keras/applications/efficientnet/EfficientNetB0

*  https://keras.io/api/applications/





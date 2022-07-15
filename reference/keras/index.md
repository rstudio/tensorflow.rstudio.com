## Keras Models

Function(s) | Description
------------- |----------------
[keras_model()](/reference/keras/latest/reference/keras_model.html) | Keras Model
[keras_model_sequential()](/reference/keras/latest/reference/keras_model_sequential.html) | Keras Model composed of a linear stack of layers
[keras_model_custom()](/reference/keras/latest/reference/keras_model_custom.html) | (Deprecated) Create a Keras custom model
[multi_gpu_model()](/reference/keras/latest/reference/multi_gpu_model.html) | (Deprecated) Replicates a model on different GPUs.
[summary(<i>&lt;keras.engine.training.Model&gt;</i>)](/reference/keras/latest/reference/summary.keras.engine.training.Model.html) [format(<i>&lt;keras.engine.training.Model&gt;</i>)](/reference/keras/latest/reference/summary.keras.engine.training.Model.html) [print(<i>&lt;keras.engine.training.Model&gt;</i>)](/reference/keras/latest/reference/summary.keras.engine.training.Model.html) | Print a summary of a Keras model
[compile(<i>&lt;keras.engine.training.Model&gt;</i>)](/reference/keras/latest/reference/compile.keras.engine.training.Model.html) | Configure a Keras model for training
[evaluate(<i>&lt;keras.engine.training.Model&gt;</i>)](/reference/keras/latest/reference/evaluate.keras.engine.training.Model.html) | Evaluate a Keras model
[export_savedmodel(<i>&lt;keras.engine.training.Model&gt;</i>)](/reference/keras/latest/reference/export_savedmodel.keras.engine.training.Model.html) | Export a Saved Model
[fit(<i>&lt;keras.engine.training.Model&gt;</i>)](/reference/keras/latest/reference/fit.keras.engine.training.Model.html) | Train a Keras model
[fit_generator()](/reference/keras/latest/reference/fit_generator.html) | (Deprecated) Fits the model on data yielded batch-by-batch by a generator.
[evaluate_generator()](/reference/keras/latest/reference/evaluate_generator.html) | (Deprecated) Evaluates the model on a data generator.
[predict(<i>&lt;keras.engine.training.Model&gt;</i>)](/reference/keras/latest/reference/predict.keras.engine.training.Model.html) | Generate predictions from a Keras model
[predict_proba()](/reference/keras/latest/reference/predict_proba.html) [predict_classes()](/reference/keras/latest/reference/predict_proba.html) | (Deprecated) Generates probability or class probability predictions for the input samples.
[predict_on_batch()](/reference/keras/latest/reference/predict_on_batch.html) | Returns predictions for a single batch of samples.
[predict_generator()](/reference/keras/latest/reference/predict_generator.html) | (Deprecated) Generates predictions for the input samples from a data generator.
[train_on_batch()](/reference/keras/latest/reference/train_on_batch.html) [test_on_batch()](/reference/keras/latest/reference/train_on_batch.html) | Single gradient update or model evaluation over one batch of samples.
[get_layer()](/reference/keras/latest/reference/get_layer.html) | Retrieves a layer based on either its name (unique) or index.
[pop_layer()](/reference/keras/latest/reference/pop_layer.html) | Remove the last layer in a model
[save_model_hdf5()](/reference/keras/latest/reference/save_model_hdf5.html) [load_model_hdf5()](/reference/keras/latest/reference/save_model_hdf5.html) | Save/Load models using HDF5 files
[serialize_model()](/reference/keras/latest/reference/serialize_model.html) [unserialize_model()](/reference/keras/latest/reference/serialize_model.html) | Serialize a model to an R object
[clone_model()](/reference/keras/latest/reference/clone_model.html) | Clone a model instance.
[freeze_weights()](/reference/keras/latest/reference/freeze_weights.html) [unfreeze_weights()](/reference/keras/latest/reference/freeze_weights.html) | Freeze and unfreeze weights

## Core Layers

Function(s) | Description
------------- |----------------
[layer_input()](/reference/keras/latest/reference/layer_input.html) | Input layer
[layer_dense()](/reference/keras/latest/reference/layer_dense.html) | Add a densely-connected NN layer to an output
[layer_activation()](/reference/keras/latest/reference/layer_activation.html) | Apply an activation function to an output.
[layer_dropout()](/reference/keras/latest/reference/layer_dropout.html) | Applies Dropout to the input.
[layer_reshape()](/reference/keras/latest/reference/layer_reshape.html) | Reshapes an output to a certain shape.
[layer_permute()](/reference/keras/latest/reference/layer_permute.html) | Permute the dimensions of an input according to a given pattern
[layer_repeat_vector()](/reference/keras/latest/reference/layer_repeat_vector.html) | Repeats the input n times.
[layer_lambda()](/reference/keras/latest/reference/layer_lambda.html) | Wraps arbitrary expression as a layer
[layer_activity_regularization()](/reference/keras/latest/reference/layer_activity_regularization.html) | Layer that applies an update to the cost function based input activity.
[layer_masking()](/reference/keras/latest/reference/layer_masking.html) | Masks a sequence by using a mask value to skip timesteps.
[layer_flatten()](/reference/keras/latest/reference/layer_flatten.html) | Flattens an input

## Convolutional Layers

Function(s) | Description
------------- |----------------

## Pooling Layers

Function(s) | Description
------------- |----------------
[layer_global_max_pooling_1d()](/reference/keras/latest/reference/layer_global_max_pooling_1d.html) | Global max pooling operation for temporal data.
[layer_global_average_pooling_1d()](/reference/keras/latest/reference/layer_global_average_pooling_1d.html) | Global average pooling operation for temporal data.
[layer_global_max_pooling_2d()](/reference/keras/latest/reference/layer_global_max_pooling_2d.html) | Global max pooling operation for spatial data.
[layer_global_average_pooling_2d()](/reference/keras/latest/reference/layer_global_average_pooling_2d.html) | Global average pooling operation for spatial data.
[layer_global_max_pooling_3d()](/reference/keras/latest/reference/layer_global_max_pooling_3d.html) | Global Max pooling operation for 3D data.
[layer_global_average_pooling_3d()](/reference/keras/latest/reference/layer_global_average_pooling_3d.html) | Global Average pooling operation for 3D data.

## Activation Layers

Function(s) | Description
------------- |----------------
[layer_activation()](/reference/keras/latest/reference/layer_activation.html) | Apply an activation function to an output.
[layer_activation_relu()](/reference/keras/latest/reference/layer_activation_relu.html) | Rectified Linear Unit activation function
[layer_activation_leaky_relu()](/reference/keras/latest/reference/layer_activation_leaky_relu.html) | Leaky version of a Rectified Linear Unit.
[layer_activation_parametric_relu()](/reference/keras/latest/reference/layer_activation_parametric_relu.html) | Parametric Rectified Linear Unit.
[layer_activation_thresholded_relu()](/reference/keras/latest/reference/layer_activation_thresholded_relu.html) | Thresholded Rectified Linear Unit.
[layer_activation_elu()](/reference/keras/latest/reference/layer_activation_elu.html) | Exponential Linear Unit.
[layer_activation_softmax()](/reference/keras/latest/reference/layer_activation_softmax.html) | Softmax activation function.
[layer_activation_selu()](/reference/keras/latest/reference/layer_activation_selu.html) | Scaled Exponential Linear Unit.

## Dropout Layers

Function(s) | Description
------------- |----------------
[layer_dropout()](/reference/keras/latest/reference/layer_dropout.html) | Applies Dropout to the input.

## Locally-connected Layers

Function(s) | Description
------------- |----------------
[layer_locally_connected_1d()](/reference/keras/latest/reference/layer_locally_connected_1d.html) | Locally-connected layer for 1D inputs.
[layer_locally_connected_2d()](/reference/keras/latest/reference/layer_locally_connected_2d.html) | Locally-connected layer for 2D inputs.

## Recurrent Layers

Function(s) | Description
------------- |----------------
[layer_simple_rnn()](/reference/keras/latest/reference/layer_simple_rnn.html) | Fully-connected RNN where the output is to be fed back to input.
[layer_gru()](/reference/keras/latest/reference/layer_gru.html) | Gated Recurrent Unit - Cho et al.
[layer_lstm()](/reference/keras/latest/reference/layer_lstm.html) | Long Short-Term Memory unit - Hochreiter 1997.

## Customize Recurrent Layers

Function(s) | Description
------------- |----------------
[layer_rnn()](/reference/keras/latest/reference/layer_rnn.html) | Base class for recurrent layers
[layer_simple_rnn_cell()](/reference/keras/latest/reference/layer_simple_rnn_cell.html) | Cell class for SimpleRNN
[layer_gru_cell()](/reference/keras/latest/reference/layer_gru_cell.html) | Cell class for the GRU layer
[layer_lstm_cell()](/reference/keras/latest/reference/layer_lstm_cell.html) | Cell class for the LSTM layer
[layer_stacked_rnn_cells()](/reference/keras/latest/reference/layer_stacked_rnn_cells.html) | Wrapper allowing a stack of RNN cells to behave as a single cell

## Embedding Layers

Function(s) | Description
------------- |----------------
[layer_embedding()](/reference/keras/latest/reference/layer_embedding.html) | Turns positive integers (indexes) into dense vectors of fixed size.

## Normalization Layers

Function(s) | Description
------------- |----------------
[layer_batch_normalization()](/reference/keras/latest/reference/layer_batch_normalization.html) | Batch normalization layer (Ioffe and Szegedy, 2014).
[layer_layer_normalization()](/reference/keras/latest/reference/layer_layer_normalization.html) | Layer normalization layer (Ba et al., 2016).

## Noise Layers

Function(s) | Description
------------- |----------------
[layer_gaussian_noise()](/reference/keras/latest/reference/layer_gaussian_noise.html) | Apply additive zero-centered Gaussian noise.
[layer_gaussian_dropout()](/reference/keras/latest/reference/layer_gaussian_dropout.html) | Apply multiplicative 1-centered Gaussian noise.
[layer_alpha_dropout()](/reference/keras/latest/reference/layer_alpha_dropout.html) | Applies Alpha Dropout to the input.

## Merge Layers

Function(s) | Description
------------- |----------------
[layer_add()](/reference/keras/latest/reference/layer_add.html) | Layer that adds a list of inputs.
[layer_subtract()](/reference/keras/latest/reference/layer_subtract.html) | Layer that subtracts two inputs.
[layer_multiply()](/reference/keras/latest/reference/layer_multiply.html) | Layer that multiplies (element-wise) a list of inputs.
[layer_average()](/reference/keras/latest/reference/layer_average.html) | Layer that averages a list of inputs.
[layer_maximum()](/reference/keras/latest/reference/layer_maximum.html) | Layer that computes the maximum (element-wise) a list of inputs.
[layer_minimum()](/reference/keras/latest/reference/layer_minimum.html) | Layer that computes the minimum (element-wise) a list of inputs.
[layer_concatenate()](/reference/keras/latest/reference/layer_concatenate.html) | Layer that concatenates a list of inputs.
[layer_dot()](/reference/keras/latest/reference/layer_dot.html) | Layer that computes a dot product between samples in two tensors.

## Image Preprocessing Layers

Function(s) | Description
------------- |----------------
[layer_resizing()](/reference/keras/latest/reference/layer_resizing.html) | Image resizing layer
[layer_rescaling()](/reference/keras/latest/reference/layer_rescaling.html) | Multiply inputs by <code>scale</code> and adds <code>offset</code>
[layer_center_crop()](/reference/keras/latest/reference/layer_center_crop.html) | Crop the central portion of the images to target height and width

## Image Augmentation Layers

Function(s) | Description
------------- |----------------
[layer_random_contrast()](/reference/keras/latest/reference/layer_random_contrast.html) | Adjust the contrast of an image or images by a random factor
[layer_random_crop()](/reference/keras/latest/reference/layer_random_crop.html) | Randomly crop the images to target height and width
[layer_random_flip()](/reference/keras/latest/reference/layer_random_flip.html) | Randomly flip each image horizontally and vertically
[layer_random_height()](/reference/keras/latest/reference/layer_random_height.html) | Randomly vary the height of a batch of images during training
[layer_random_rotation()](/reference/keras/latest/reference/layer_random_rotation.html) | Randomly rotate each image
[layer_random_translation()](/reference/keras/latest/reference/layer_random_translation.html) | Randomly translate each image during training
[layer_random_width()](/reference/keras/latest/reference/layer_random_width.html) | Randomly vary the width of a batch of images during training
[layer_random_zoom()](/reference/keras/latest/reference/layer_random_zoom.html) | A preprocessing layer which randomly zooms images during training.

## Categorical Features Preprocessing

Function(s) | Description
------------- |----------------
[layer_category_encoding()](/reference/keras/latest/reference/layer_category_encoding.html) | A preprocessing layer which encodes integer features.
[layer_hashing()](/reference/keras/latest/reference/layer_hashing.html) | A preprocessing layer which hashes and bins categorical features.
[layer_integer_lookup()](/reference/keras/latest/reference/layer_integer_lookup.html) | A preprocessing layer which maps integer features to contiguous ranges.
[layer_string_lookup()](/reference/keras/latest/reference/layer_string_lookup.html) | A preprocessing layer which maps string features to integer indices.

## Numerical Features Preprocessing

Function(s) | Description
------------- |----------------
[layer_normalization()](/reference/keras/latest/reference/layer_normalization.html) | A preprocessing layer which normalizes continuous features.
[layer_discretization()](/reference/keras/latest/reference/layer_discretization.html) | A preprocessing layer which buckets continuous features by ranges.

## Attention Layers

Function(s) | Description
------------- |----------------
[layer_attention()](/reference/keras/latest/reference/layer_attention.html) | Creates attention layer
[layer_multi_head_attention()](/reference/keras/latest/reference/layer_multi_head_attention.html) | MultiHeadAttention layer
[layer_additive_attention()](/reference/keras/latest/reference/layer_additive_attention.html) | Additive attention layer, a.k.a. Bahdanau-style attention

## Layer Wrappers

Function(s) | Description
------------- |----------------
[time_distributed()](/reference/keras/latest/reference/time_distributed.html) | This layer wrapper allows to apply a layer to every temporal slice of an input
[bidirectional()](/reference/keras/latest/reference/bidirectional.html) | Bidirectional wrapper for RNNs

## Layer Methods

Function(s) | Description
------------- |----------------
[get_config()](/reference/keras/latest/reference/get_config.html) [from_config()](/reference/keras/latest/reference/get_config.html) | Layer/Model configuration
[get_weights()](/reference/keras/latest/reference/get_weights.html) [set_weights()](/reference/keras/latest/reference/get_weights.html) | Layer/Model weights as R arrays
[get_input_at()](/reference/keras/latest/reference/get_input_at.html) [get_output_at()](/reference/keras/latest/reference/get_input_at.html) [get_input_shape_at()](/reference/keras/latest/reference/get_input_at.html) [get_output_shape_at()](/reference/keras/latest/reference/get_input_at.html) [get_input_mask_at()](/reference/keras/latest/reference/get_input_at.html) [get_output_mask_at()](/reference/keras/latest/reference/get_input_at.html) | Retrieve tensors for layers with multiple nodes
[count_params()](/reference/keras/latest/reference/count_params.html) | Count the total number of scalars composing the weights.
[reset_states()](/reference/keras/latest/reference/reset_states.html) | Reset the states for a layer

## Custom Layers

Function(s) | Description
------------- |----------------
[`%py_class%`](/reference/keras/latest/reference/grapes-py_class-grapes.html) | Make a python class constructor
[Layer()](/reference/keras/latest/reference/Layer.html) | (Deprecated) Create a custom Layer
[create_layer_wrapper()](/reference/keras/latest/reference/create_layer_wrapper.html) | Create a Keras Layer wrapper
[create_layer()](/reference/keras/latest/reference/create_layer.html) | Create a Keras Layer

## Model Persistence

Function(s) | Description
------------- |----------------
[save_model_hdf5()](/reference/keras/latest/reference/save_model_hdf5.html) [load_model_hdf5()](/reference/keras/latest/reference/save_model_hdf5.html) | Save/Load models using HDF5 files
[save_model_weights_hdf5()](/reference/keras/latest/reference/save_model_weights_hdf5.html) [load_model_weights_hdf5()](/reference/keras/latest/reference/save_model_weights_hdf5.html) | Save/Load model weights using HDF5 files
[serialize_model()](/reference/keras/latest/reference/serialize_model.html) [unserialize_model()](/reference/keras/latest/reference/serialize_model.html) | Serialize a model to an R object
[get_weights()](/reference/keras/latest/reference/get_weights.html) [set_weights()](/reference/keras/latest/reference/get_weights.html) | Layer/Model weights as R arrays
[get_config()](/reference/keras/latest/reference/get_config.html) [from_config()](/reference/keras/latest/reference/get_config.html) | Layer/Model configuration
[model_to_saved_model()](/reference/keras/latest/reference/model_to_saved_model.html) | (Deprecated) Export to Saved Model format
[model_from_saved_model()](/reference/keras/latest/reference/model_from_saved_model.html) | Load a Keras model from the Saved Model format
[save_model_tf()](/reference/keras/latest/reference/save_model_tf.html) [load_model_tf()](/reference/keras/latest/reference/save_model_tf.html) | Save/Load models using SavedModel format
[save_model_weights_tf()](/reference/keras/latest/reference/save_model_weights_tf.html) [load_model_weights_tf()](/reference/keras/latest/reference/save_model_weights_tf.html) | Save model weights in the SavedModel format
[model_to_json()](/reference/keras/latest/reference/model_to_json.html) [model_from_json()](/reference/keras/latest/reference/model_to_json.html) | Model configuration as JSON
[model_to_yaml()](/reference/keras/latest/reference/model_to_yaml.html) [model_from_yaml()](/reference/keras/latest/reference/model_to_yaml.html) | Model configuration as YAML

## Datasets

Function(s) | Description
------------- |----------------

## Applications

Function(s) | Description
------------- |----------------
[imagenet_preprocess_input()](/reference/keras/latest/reference/imagenet_preprocess_input.html) | Preprocesses a tensor or array encoding a batch of images.
[imagenet_decode_predictions()](/reference/keras/latest/reference/imagenet_decode_predictions.html) | Decodes the prediction of an ImageNet model.
[application_mobilenet()](/reference/keras/latest/reference/application_mobilenet.html) [mobilenet_preprocess_input()](/reference/keras/latest/reference/application_mobilenet.html) [mobilenet_decode_predictions()](/reference/keras/latest/reference/application_mobilenet.html) [mobilenet_load_model_hdf5()](/reference/keras/latest/reference/application_mobilenet.html) | MobileNet model architecture.

## Sequence Preprocessing

Function(s) | Description
------------- |----------------
[pad_sequences()](/reference/keras/latest/reference/pad_sequences.html) | Pads sequences to the same length
[skipgrams()](/reference/keras/latest/reference/skipgrams.html) | Generates skipgram word pairs.
[make_sampling_table()](/reference/keras/latest/reference/make_sampling_table.html) | Generates a word rank-based probabilistic sampling table.
[timeseries_dataset_from_array()](/reference/keras/latest/reference/timeseries_dataset_from_array.html) | Creates a dataset of sliding windows over a timeseries provided as array

## Text Preprocessing

Function(s) | Description
------------- |----------------
[text_dataset_from_directory()](/reference/keras/latest/reference/text_dataset_from_directory.html) | Generate a <code>tf.data.Dataset</code> from text files in a directory
[text_tokenizer()](/reference/keras/latest/reference/text_tokenizer.html) | Text tokenization utility
[fit_text_tokenizer()](/reference/keras/latest/reference/fit_text_tokenizer.html) | Update tokenizer internal vocabulary based on a list of texts or list of
sequences.
[save_text_tokenizer()](/reference/keras/latest/reference/save_text_tokenizer.html) [load_text_tokenizer()](/reference/keras/latest/reference/save_text_tokenizer.html) | Save a text tokenizer to an external file
[texts_to_sequences()](/reference/keras/latest/reference/texts_to_sequences.html) | Transform each text in texts in a sequence of integers.
[texts_to_sequences_generator()](/reference/keras/latest/reference/texts_to_sequences_generator.html) | Transforms each text in texts in a sequence of integers.
[texts_to_matrix()](/reference/keras/latest/reference/texts_to_matrix.html) | Convert a list of texts to a matrix.
[sequences_to_matrix()](/reference/keras/latest/reference/sequences_to_matrix.html) | Convert a list of sequences into a matrix.
[text_one_hot()](/reference/keras/latest/reference/text_one_hot.html) | One-hot encode a text into a list of word indexes in a vocabulary of size n.
[text_hashing_trick()](/reference/keras/latest/reference/text_hashing_trick.html) | Converts a text to a sequence of indexes in a fixed-size hashing space.
[text_to_word_sequence()](/reference/keras/latest/reference/text_to_word_sequence.html) | Convert text to a sequence of words (or tokens).
[layer_text_vectorization()](/reference/keras/latest/reference/layer_text_vectorization.html) [get_vocabulary()](/reference/keras/latest/reference/layer_text_vectorization.html) [set_vocabulary()](/reference/keras/latest/reference/layer_text_vectorization.html) | A preprocessing layer which maps text features to integer sequences.
[adapt()](/reference/keras/latest/reference/adapt.html) | Fits the state of the preprocessing layer to the data being passed

## Image Preprocessing

Function(s) | Description
------------- |----------------
[image_load()](/reference/keras/latest/reference/image_load.html) | Loads an image into PIL format.
[image_to_array()](/reference/keras/latest/reference/image_to_array.html) [image_array_resize()](/reference/keras/latest/reference/image_to_array.html) [image_array_save()](/reference/keras/latest/reference/image_to_array.html) | 3D array representation of images
[image_data_generator()](/reference/keras/latest/reference/image_data_generator.html) | Generate batches of image data with real-time data augmentation. The data will be
looped over (in batches).
[fit_image_data_generator()](/reference/keras/latest/reference/fit_image_data_generator.html) | Fit image data generator internal statistics to some sample data.
[image_dataset_from_directory()](/reference/keras/latest/reference/image_dataset_from_directory.html) | Create a dataset from a directory
[flow_images_from_data()](/reference/keras/latest/reference/flow_images_from_data.html) | Generates batches of augmented/normalized data from image data and labels
[flow_images_from_directory()](/reference/keras/latest/reference/flow_images_from_directory.html) | Generates batches of data from images in a directory (with optional
augmented/normalized data)
[flow_images_from_dataframe()](/reference/keras/latest/reference/flow_images_from_dataframe.html) | Takes the dataframe and the path to a directory and generates batches of
augmented/normalized data.
[generator_next()](/reference/keras/latest/reference/generator_next.html) | Retrieve the next item from a generator

## Optimizers

Function(s) | Description
------------- |----------------
[optimizer_sgd()](/reference/keras/latest/reference/optimizer_sgd.html) | Stochastic gradient descent optimizer
[optimizer_rmsprop()](/reference/keras/latest/reference/optimizer_rmsprop.html) | RMSProp optimizer
[optimizer_adagrad()](/reference/keras/latest/reference/optimizer_adagrad.html) | Adagrad optimizer.
[optimizer_adadelta()](/reference/keras/latest/reference/optimizer_adadelta.html) | Adadelta optimizer.
[optimizer_adam()](/reference/keras/latest/reference/optimizer_adam.html) | Adam optimizer
[optimizer_adamax()](/reference/keras/latest/reference/optimizer_adamax.html) | Adamax optimizer
[optimizer_nadam()](/reference/keras/latest/reference/optimizer_nadam.html) | Nesterov Adam optimizer

## Learning Rate Schedules

Function(s) | Description
------------- |----------------
[new_learning_rate_schedule_class()](/reference/keras/latest/reference/new_learning_rate_schedule_class.html) | Create a new learning rate schedule type

## Callbacks

Function(s) | Description
------------- |----------------
[callback_progbar_logger()](/reference/keras/latest/reference/callback_progbar_logger.html) | Callback that prints metrics to stdout.
[callback_model_checkpoint()](/reference/keras/latest/reference/callback_model_checkpoint.html) | Save the model after every epoch.
[callback_early_stopping()](/reference/keras/latest/reference/callback_early_stopping.html) | Stop training when a monitored quantity has stopped improving.
[callback_remote_monitor()](/reference/keras/latest/reference/callback_remote_monitor.html) | Callback used to stream events to a server.
[callback_learning_rate_scheduler()](/reference/keras/latest/reference/callback_learning_rate_scheduler.html) | Learning rate scheduler.
[callback_tensorboard()](/reference/keras/latest/reference/callback_tensorboard.html) | TensorBoard basic visualizations
[callback_reduce_lr_on_plateau()](/reference/keras/latest/reference/callback_reduce_lr_on_plateau.html) | Reduce learning rate when a metric has stopped improving.
[callback_terminate_on_naan()](/reference/keras/latest/reference/callback_terminate_on_naan.html) | Callback that terminates training when a NaN loss is encountered.
[callback_csv_logger()](/reference/keras/latest/reference/callback_csv_logger.html) | Callback that streams epoch results to a csv file
[callback_lambda()](/reference/keras/latest/reference/callback_lambda.html) | Create a custom callback

## Initializers

Function(s) | Description
------------- |----------------
[initializer_zeros()](/reference/keras/latest/reference/initializer_zeros.html) | Initializer that generates tensors initialized to 0.
[initializer_ones()](/reference/keras/latest/reference/initializer_ones.html) | Initializer that generates tensors initialized to 1.
[initializer_constant()](/reference/keras/latest/reference/initializer_constant.html) | Initializer that generates tensors initialized to a constant value.
[initializer_random_normal()](/reference/keras/latest/reference/initializer_random_normal.html) | Initializer that generates tensors with a normal distribution.
[initializer_random_uniform()](/reference/keras/latest/reference/initializer_random_uniform.html) | Initializer that generates tensors with a uniform distribution.
[initializer_truncated_normal()](/reference/keras/latest/reference/initializer_truncated_normal.html) | Initializer that generates a truncated normal distribution.
[initializer_variance_scaling()](/reference/keras/latest/reference/initializer_variance_scaling.html) | Initializer capable of adapting its scale to the shape of weights.
[initializer_orthogonal()](/reference/keras/latest/reference/initializer_orthogonal.html) | Initializer that generates a random orthogonal matrix.
[initializer_identity()](/reference/keras/latest/reference/initializer_identity.html) | Initializer that generates the identity matrix.
[initializer_glorot_normal()](/reference/keras/latest/reference/initializer_glorot_normal.html) | Glorot normal initializer, also called Xavier normal initializer.
[initializer_glorot_uniform()](/reference/keras/latest/reference/initializer_glorot_uniform.html) | Glorot uniform initializer, also called Xavier uniform initializer.
[initializer_he_normal()](/reference/keras/latest/reference/initializer_he_normal.html) | He normal initializer.
[initializer_he_uniform()](/reference/keras/latest/reference/initializer_he_uniform.html) | He uniform variance scaling initializer.
[initializer_lecun_uniform()](/reference/keras/latest/reference/initializer_lecun_uniform.html) | LeCun uniform initializer.
[initializer_lecun_normal()](/reference/keras/latest/reference/initializer_lecun_normal.html) | LeCun normal initializer.

## Constraints

Function(s) | Description
------------- |----------------
[constraint_maxnorm()](/reference/keras/latest/reference/constraints.html) [constraint_nonneg()](/reference/keras/latest/reference/constraints.html) [constraint_unitnorm()](/reference/keras/latest/reference/constraints.html) [constraint_minmaxnorm()](/reference/keras/latest/reference/constraints.html) | Weight constraints

## Utils

Function(s) | Description
------------- |----------------
[plot(<i>&lt;keras_training_history&gt;</i>)](/reference/keras/latest/reference/plot.keras_training_history.html) | Plot training history
[plot(<i>&lt;keras.engine.training.Model&gt;</i>)](/reference/keras/latest/reference/plot.keras.engine.training.Model.html) | Plot a Keras model
[zip_lists()](/reference/keras/latest/reference/zip_lists.html) | zip lists
[mark_active()](/reference/keras/latest/reference/new-classes.html) [new_metric_class()](/reference/keras/latest/reference/new-classes.html) [new_loss_class()](/reference/keras/latest/reference/new-classes.html) [new_callback_class()](/reference/keras/latest/reference/new-classes.html) [new_model_class()](/reference/keras/latest/reference/new-classes.html) [new_layer_class()](/reference/keras/latest/reference/new-classes.html) | Define new keras types
[timeseries_generator()](/reference/keras/latest/reference/timeseries_generator.html) | Utility function for generating batches of temporal data.
[to_categorical()](/reference/keras/latest/reference/to_categorical.html) | Converts a class vector (integers) to binary class matrix.
[normalize()](/reference/keras/latest/reference/normalize.html) | Normalize a matrix or nd-array
[with_custom_object_scope()](/reference/keras/latest/reference/with_custom_object_scope.html) | Provide a scope with mappings of names to custom objects
[keras_array()](/reference/keras/latest/reference/keras_array.html) | Keras array object
[hdf5_matrix()](/reference/keras/latest/reference/hdf5_matrix.html) | Representation of HDF5 dataset to be used instead of an R array
[get_file()](/reference/keras/latest/reference/get_file.html) | Downloads a file from a URL if it not already in the cache.
[install_keras()](/reference/keras/latest/reference/install_keras.html) | Install TensorFlow and Keras, including all Python dependencies
[is_keras_available()](/reference/keras/latest/reference/is_keras_available.html) | Check if Keras is Available
[backend()](/reference/keras/latest/reference/backend.html) | Keras backend tensor engine
[implementation()](/reference/keras/latest/reference/implementation.html) | Keras implementation
[use_implementation()](/reference/keras/latest/reference/use_implementation.html) [use_backend()](/reference/keras/latest/reference/use_implementation.html) | Select a Keras implementation and backend

## Losses

Function(s) | Description
------------- |----------------
[loss_binary_crossentropy()](/reference/keras/latest/reference/loss-functions.html) [loss_categorical_crossentropy()](/reference/keras/latest/reference/loss-functions.html) [loss_categorical_hinge()](/reference/keras/latest/reference/loss-functions.html) [loss_cosine_similarity()](/reference/keras/latest/reference/loss-functions.html) [loss_hinge()](/reference/keras/latest/reference/loss-functions.html) [loss_huber()](/reference/keras/latest/reference/loss-functions.html) [loss_kullback_leibler_divergence()](/reference/keras/latest/reference/loss-functions.html) [loss_kl_divergence()](/reference/keras/latest/reference/loss-functions.html) [loss_logcosh()](/reference/keras/latest/reference/loss-functions.html) [loss_mean_absolute_error()](/reference/keras/latest/reference/loss-functions.html) [loss_mean_absolute_percentage_error()](/reference/keras/latest/reference/loss-functions.html) [loss_mean_squared_error()](/reference/keras/latest/reference/loss-functions.html) [loss_mean_squared_logarithmic_error()](/reference/keras/latest/reference/loss-functions.html) [loss_poisson()](/reference/keras/latest/reference/loss-functions.html) [loss_sparse_categorical_crossentropy()](/reference/keras/latest/reference/loss-functions.html) [loss_squared_hinge()](/reference/keras/latest/reference/loss-functions.html) | Loss functions

## Metrics

Function(s) | Description
------------- |----------------
[custom_metric()](/reference/keras/latest/reference/custom_metric.html) | Custom metric function

## Regularizers

Function(s) | Description
------------- |----------------
[regularizer_l1()](/reference/keras/latest/reference/regularizer_l1.html) [regularizer_l2()](/reference/keras/latest/reference/regularizer_l1.html) [regularizer_l1_l2()](/reference/keras/latest/reference/regularizer_l1.html) | L1 and L2 regularization

## Activations

Function(s) | Description
------------- |----------------
[activation_relu()](/reference/keras/latest/reference/activation_relu.html) [activation_elu()](/reference/keras/latest/reference/activation_relu.html) [activation_selu()](/reference/keras/latest/reference/activation_relu.html) [activation_hard_sigmoid()](/reference/keras/latest/reference/activation_relu.html) [activation_linear()](/reference/keras/latest/reference/activation_relu.html) [activation_sigmoid()](/reference/keras/latest/reference/activation_relu.html) [activation_softmax()](/reference/keras/latest/reference/activation_relu.html) [activation_softplus()](/reference/keras/latest/reference/activation_relu.html) [activation_softsign()](/reference/keras/latest/reference/activation_relu.html) [activation_tanh()](/reference/keras/latest/reference/activation_relu.html) [activation_exponential()](/reference/keras/latest/reference/activation_relu.html) [activation_gelu()](/reference/keras/latest/reference/activation_relu.html) [activation_swish()](/reference/keras/latest/reference/activation_relu.html) | Activation functions

## Backend

Function(s) | Description
------------- |----------------

## Python

Function(s) | Description
------------- |----------------
[keras](/reference/keras/latest/reference/keras.html) | Main Keras module
[`%py_class%`](/reference/keras/latest/reference/grapes-py_class-grapes.html) | Make a python class constructor
[`%&lt;-active%`](/reference/keras/latest/reference/grapes-set-active-grapes.html) | Make an Active Binding

## Deprecated

Function(s) | Description
------------- |----------------
[create_wrapper()](/reference/keras/latest/reference/create_wrapper.html) | (Deprecated) Create a Keras Wrapper
[loss_cosine_proximity()](/reference/keras/latest/reference/loss_cosine_proximity.html) | (Deprecated) loss_cosine_proximity
[layer_cudnn_gru()](/reference/keras/latest/reference/layer_cudnn_gru.html) | (Deprecated) Fast GRU implementation backed by <a href='https://developer.nvidia.com/cudnn'>CuDNN</a>.
[layer_cudnn_lstm()](/reference/keras/latest/reference/layer_cudnn_lstm.html) | (Deprecated) Fast LSTM implementation backed by <a href='https://developer.nvidia.com/cudnn'>CuDNN</a>.
[layer_dense_features()](/reference/keras/latest/reference/layer_dense_features.html) | Constructs a DenseFeatures.


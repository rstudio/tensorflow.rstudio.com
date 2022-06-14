df <- tibble::tribble(
  ~V1,                                                                                      ~V2,                                                                                                                                                                    ~V3, ~V4,
  NA,                                                                                "Example",                                                                                                                                                          "Description",  NA,
  NA,                                                                 "----------------------",                                                                                                                                 "------------------------------------",  NA,
  NA,                                     "[addition_rnn](/guide/keras/examples/addition_rnn)",                                                                 "Implementation of sequence to sequence learning for performing addition of two numbers (as strings).",  NA,
  NA,                                         "[babi_memnn](/guide/keras/examples/babi_memnn)",                                                                                               "Trains a memory network on the bAbI dataset for reading comprehension.",  NA,
  NA,                                             "[babi_rnn](/guide/keras/examples/babi_rnn)",                                                                                 "Trains a two-branch recurrent network on the bAbI dataset for reading comprehension.",  NA,
  NA,                                       "[cifar10_cnn](/guide/keras/examples/cifar10_cnn)",                                                                                                        "Trains a simple deep CNN on the CIFAR10 small images dataset.",  NA,
  NA,                             "[cifar10_densenet](/guide/keras/examples/cifar10_densenet)",                                                                                                         "Trains a DenseNet-40-12 on the CIFAR10 small images dataset.",  NA,
  NA,                                           "[conv_lstm](/guide/keras/examples/conv_lstm)",                                                                                                                "Demonstrates the use of a convolutional LSTM network.",  NA,
  NA,                                         "[deep_dream](/guide/keras/examples/deep_dream)",                                                                                                                                                "Deep Dreams in Keras.",  NA,
  NA,                                       "[eager_dcgan](/guide/keras/examples/eager_dcgan)",                                                                                          "Generating digits with generative adversarial networks and eager execution.",  NA,
  NA,                 "[eager_image_captioning](/guide/keras/examples/eager_image_captioning)",                                                                                                            "Generating image captions with Keras and eager execution.",  NA,
  NA,                                   "[eager_pix2pix](/guide/keras/examples/eager_pix2pix)",                                                                                                      "Image-to-image translation with Pix2Pix, using eager execution.",  NA,
  NA,                       "[eager_styletransfer](/guide/keras/examples/eager_styletransfer)",                                                                                                                          "Neural style transfer with eager execution.",  NA,
  NA,                                       "[fine_tuning](/guide/keras/examples/fine_tuning)",                                                                                                                         "Fine tuning of a image classification model.",  NA,
  NA,               "[imdb_bidirectional_lstm](/guide/keras/examples/imdb_bidirectional_lstm)",                                                                                               "Trains a Bidirectional LSTM on the IMDB sentiment classification task.",  NA,
  NA,                                             "[imdb_cnn](/guide/keras/examples/imdb_cnn)",                                                                                                       "Demonstrates the use of Convolution1D for text classification.",  NA,
  NA,                                   "[imdb_cnn_lstm](/guide/keras/examples/imdb_cnn_lstm)",                                                        "Trains a convolutional stack followed by a recurrent stack network on the IMDB sentiment classification task.",  NA,
  NA,                                   "[imdb_fasttext](/guide/keras/examples/imdb_fasttext)",                                                                                                   "Trains a FastText model on the IMDB sentiment classification task.",  NA,
  NA,                                           "[imdb_lstm](/guide/keras/examples/imdb_lstm)",                                                                                                             "Trains a LSTM on the IMDB sentiment classification task.",  NA,
  NA,                     "[lstm_text_generation](/guide/keras/examples/lstm_text_generation)",                                                                                                                            "Generates text from Nietzsche's writings.",  NA,
  NA,                                     "[lstm_seq2seq](/guide/keras/examples/lstm_seq2seq)",                                                                        "This script demonstrates how to implement a basic character-level sequence-to-sequence model.",  NA,
  NA,                                       "[mnist_acgan](/guide/keras/examples/mnist_acgan)",                                                                                            "Implementation of AC-GAN (Auxiliary Classifier GAN ) on the MNIST dataset",  NA,
  NA,                       "[mnist_antirectifier](/guide/keras/examples/mnist_antirectifier)",                                                                                                                    "Demonstrates how to write custom layers for Keras",  NA,
  NA,                                           "[mnist_cnn](/guide/keras/examples/mnist_cnn)",                                                                                                                        "Trains a simple convnet on the MNIST dataset.",  NA,
  NA,                     "[mnist_cnn_embeddings](/guide/keras/examples/mnist_cnn_embeddings)",                                                                                                             "Demonstrates how to visualize embeddings in TensorBoard.",  NA,
  NA,                                         "[mnist_irnn](/guide/keras/examples/mnist_irnn)", "Reproduction of the IRNN experiment with pixel-by-pixel sequential MNIST in \"A Simple Way to Initialize Recurrent Networks of Rectified Linear Units\" by Le et al.",  NA,
  NA,                                           "[mnist_mlp](/guide/keras/examples/mnist_mlp)",                                                                                                    "Trains a simple deep multi-layer perceptron on the MNIST dataset.",  NA,
  NA,                 "[mnist_hierarchical_rnn](/guide/keras/examples/mnist_hierarchical_rnn)",                                                                                                           "Trains a Hierarchical RNN (HRNN) to classify MNIST digits.",  NA,
  NA,                                 "[mnist_tfrecord](/guide/keras/examples/mnist_tfrecord)",                                                                                                   "MNIST dataset with TFRecords, the standard TensorFlow data format.",  NA,
  NA,                         "[mnist_transfer_cnn](/guide/keras/examples/mnist_transfer_cnn)",                                                                                                                                       "Transfer learning toy example.",  NA,
  NA,                   "[neural_style_transfer](/guide/keras/examples/neural_style_transfer)",                                    "Neural style transfer (generating an image with the same “content” as a base image, but with the “style” of a different picture).",  NA,
  NA,                                   "[nmt_attention](/guide/keras/examples/nmt_attention)",                                                                                                              "Neural machine translation with an attention mechanism.",  NA,
  NA,                         "[quora_siamese_lstm](/guide/keras/examples/quora_siamese_lstm)",                                                                                     "Classifying duplicate quesitons from Quora using Siamese Recurrent Architecture.",  NA,
  NA,                                       "[reuters_mlp](/guide/keras/examples/reuters_mlp)",                                                                                 "Trains and evaluatea a simple MLP on the Reuters newswire topic classification task.",  NA,
  NA,                                   "[stateful_lstm](/guide/keras/examples/stateful_lstm)",                                                                                           "Demonstrates how to use stateful RNNs to model long sequences efficiently.",  NA,
  NA,                   "[text_explanation_lime](/guide/keras/examples/text_explanation_lime)",                                                                                                                                "How to use lime to explain text data.",  NA,
  NA,               "[variational_autoencoder](/guide/keras/examples/variational_autoencoder)",                                                                                                                 "Demonstrates how to build a variational autoencoder.",  NA,
  NA, "[variational_autoencoder_deconv](/guide/keras/examples/variational_autoencoder_deconv)",                                                                           "Demonstrates how to build a variational autoencoder with Keras using deconvolution layers.",  NA,
  NA,                                         "[tfprob_vae](/guide/keras/examples/tfprob_vae)",                                                                                           "A variational autoencoder using TensorFlow Probability on Kuzushiji-MNIST.",  NA,
  NA,                                                 "[vq_vae](/guide/keras/examples/vq_vae)",                                                                                             "Discrete Representation Learning with VQ-VAE and TensorFlow Probability.",  NA
)

library(tidyverse)
df <- tibble(
  left = df$V2, right = df$V3
)


df <- df %>%
  slice(-(1:2)) %>%
  mutate(
    # right = NULL,
    name = sub("\\[([[:alnum:]_]+)\\].*", "\\1", left),
    desc = right
  ) %>%
  select(name, desc)

if(basename(getwd()) == "tf-site")
setwd("site/examples/")

for (r in 1:nrow(df)) {


name <- df[r,]$name
desc <- df[r,]$desc


fs::file_copy(sprintf("../../site-v1/guide/keras/examples/%s.R", name), ".", overwrite = T)
knitr::spin(fs::path_ext_set(name, "R"),
            # doc = "^#+",
            knit = FALSE)

x <- c(
  "---",
  glue::glue("title: {name}"),
  glue::glue("description: {desc}"),
  "---",
  read_lines(fs::path_ext_set(name, "Rmd"))
)

write_lines(x, fs::path_ext_set(name, "qmd"))
unlink(fs::path_ext_set(name, "R"))
unlink(fs::path_ext_set(name, "Rmd"))
}

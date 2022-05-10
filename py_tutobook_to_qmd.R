
library(envir)
attach_eval({
  import_from(magrittr, `%>%`, `%<>%`)

  ll <- list.files
  formals(ll)$all.files <- TRUE
  formals(ll)$full.names <- TRUE
  formals(ll)$recursive <- TRUE

  formals(gsub)$perl <- quote(!fixed)
  formals(sub)$perl <- quote(!fixed)

})

tutobook_file <- "keras/guides/customizing_what_happens_in_fit.py"
x <- readLines(tutobook_file)

# x <- x[1:100]

# invert delimiters
x[head(which(x == '"""'), 2)] <- '---'
x <- x[-head(which(x == '"""'), 1)]
x[x == '"""'] <- '```'

x[which(x == "```") %>% .[seq(to = length(.), by = 2)]] <-
  "```{r}"





x <- gsub("zip(", "zip_lists(", x,
         fixed = TRUE)


x <- gsub("^(\\s*)([a-zA-Z._]+) =", "\\1\\2 <-", x)

x <- paste0(x, collapse = "\n")

x <- gsub("\\{([^}]*)}", "list(\\1)", x)
x <- gsub("```list(r)", "```{r}", x, fixed = TRUE)


x <- gsub("def ([a-zA-Z_]+)\\(self,? ?(.*)\\):",
         "\\1 <- function(\\2) {    }",
          x,
          perl = TRUE)

x <- gsub("with ([a-zA-Z.()]+) as ([a-zA-Z.()]+):",
         "with(\\1 %as% \\2, {    })", x)

x <- gsub("```\\{r}\n+", "```{r}\n", x)
x <- gsub("\n+```\n+", "\n```\n\n", x)

x <- gsub("\n```{r}\n```\n", "\n\n", x, fixed = TRUE)


x <- strsplit(x, "\n", fixed = TRUE)[[1]]

x <- gsub("None", "NULL", x, fixed = TRUE)
x <- gsub("True", "TRUE", x, fixed = TRUE)
x <- gsub("False", "FALSE", x, fixed = TRUE)


x <- gsub("^(\\#+)(.+)", "\\1\\2\n", x)


x <- sub("@property", "mark_active(  )", x, fixed = TRUE)
# stop()

x <- gsub("([[:alnum:]_])\\.([[:alpha:]_])", "\\1$\\2", x)

# x <-  "            super(GAN, self).__init__()"




# writeLines(x)

x <- gsub("import tensorflow as tf", "library(tensorflow)", x, fixed=T)
x <- gsub("from tensorflow import keras", "library(keras)", x, fixed=T)


x <- gsub("keras$Input(", "layer_input(", x, fixed = TRUE)
x <- gsub("(keras\\$)?layers\\$Dense\\(", "layer_dense(", x)
x <- gsub("(keras\\$)?layers\\$LeakyReLU\\(", "layer_activation_leaky_relu(", x)
x <- gsub("(keras\\$)?layers\\$Reshape\\(", "layer_reshape(", x)
x <- gsub("(keras\\$)?layers\\$Conv2DTranspose\\(", "layer_conv_2d_transpose(", x)
x <- gsub("(keras\\$)?layers\\$Conv3D\\(", "layer_conv_3d(", x)
x <- gsub("(keras\\$)?layers\\$Conv2D\\(", "layer_conv_2d(", x)
x <- gsub("(keras\\$)?layers\\$Conv1D\\(", "layer_conv_1d(", x)
x <- gsub("(keras\\$)?layers\\$GlobalMaxPooling1D\\(", "layer_global_max_pooling_1d(", x)
x <- gsub("(keras\\$)?layers\\$GlobalMaxPooling2D\\(", "layer_global_max_pooling_2d(", x)
x <- gsub("(keras\\$)?layers\\$GlobalMaxPooling3D\\(", "layer_global_max_pooling_3d(", x)
x <- gsub("keras$Sequential(", "keras_model_sequential(", x, fixed = TRUE)
# x <- gsub("layers$Dense(", "layer_dense(", x, fixed = TRUE)
x <- gsub("$fit(", " %>% fit(", x, fixed = TRUE)
x <- gsub("$compile(", " %>% compile(", x, fixed = TRUE)
x <- gsub("$evaluate(", " %>% evaluate(", x, fixed = TRUE)

x <- gsub("__init__ <-", "initialize <-", x, fixed = TRUE)

x <- gsub("super\\(.*, self\\)\\.__init__\\((.*)\\)",
          "super$initialize(\\1)", x)


x <- gsub("super\\(.*, self\\)\\.compile\\((.*)\\)",
          "super$compile(\\1)", x)


qmd_file <- sub("\\.py$", ".qmd", tutobook_file)

writeLines(x, qmd_file)

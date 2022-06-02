
library(envir)
attach_eval({
  import_from(magrittr, `%>%`, `%<>%`)
  import_from(glue, glue)
  #
  # ll <- list.files
  # formals(ll)$all.files <- TRUE
  # formals(ll)$full.names <- TRUE
  # formals(ll)$recursive <- TRUE
  #
  # formals(gsub)$perl <- quote(!fixed)
  # formals(sub)$perl <- quote(!fixed)

})


# x <- x[1:100]


tutobook_to_qmd <- function(x) {
  # invert delimiters
  x[head(which(x == '"""'), 2)] <- '---'
  x <- x[-head(which(x == '"""'), 1)]
  x[x == '"""'] <- '```'

  x[which(x == "```") %>% .[seq(to = length(.), by = 2)]] <-
    "```{python}"

  x[2] %<>% sub("Title:", "title:", ., fixed=TRUE)
  x[3] %<>% sub("Authors:", "author:", ., fixed=TRUE)
  x[4] %<>% sub("Date created:", "date-created:", ., fixed=TRUE)
  x[5] %<>% sub("Last modified:", "date-last-modified:", ., fixed=TRUE)
  x[6] %<>% sub("Description:", "description:", ., fixed=TRUE)

  x
}





translate_py_to_r <- function(x) {
  force(x)
  lgsub <- function(pt, rp, fixed = FALSE)
    x <<- base::gsub(pt, rp, x, perl=!fixed, fixed=fixed)

  # browser()


  lgsub("```{python}", "```{r}", fixed = TRUE)
  lgsub("zip(", "zip_lists(", fixed = TRUE)
  lgsub("tf.constant(", "as_tensor(", fixed = TRUE)
  lgsub(".ipynb)", ".qmd)", fixed = TRUE) # cross links
  lgsub("tf.function", "tf_function", fixed = TRUE)
  lgsub("**", "^", fixed = TRUE)
  lgsub("^(\\s*)([a-zA-Z._]+) =", "\\1\\2 <-")

  x <- paste0(x, collapse = "\n")

  lgsub("\\{([^}]*)}", "list(\\1)")
  lgsub("```list(r)", "```{r}", fixed = TRUE)

  lgsub("def ([a-zA-Z_]+)\\(self,? ?(.*)\\):",
        "\\1 <- function(\\2) {    }")

  lgsub("def ([a-zA-Z_]+)\\((.*)\\):",
        "\\1 <- function(\\2) {    }")

  lgsub("with ([a-zA-Z.$()= ]+) as ([a-zA-Z.()]+):",
        "with(\\1 %as% \\2, {    })")

  lgsub("with ([a-zA-Z.$()= ]+):",
        "with(\\1, {    })")

  lgsub("```\\{r}\n+", "```{r}\n")
  lgsub("\n+```\n+", "\n```\n\n")
  lgsub("\n```{r}\n```\n", "\n\n", fixed = TRUE)


  x <- strsplit(x, "\n", fixed = TRUE)[[1L]]

  lgsub("None", "NULL", fixed = TRUE)
  lgsub("True", "TRUE", fixed = TRUE)
  lgsub("False", "FALSE", fixed = TRUE)


  lgsub("^(\\#+)(.+)", "\\1\\2\n")
  lgsub("@property", "mark_active(  )", fixed = TRUE)
  lgsub("([[:alnum:]_])\\.([[:alpha:]_])", "\\1$\\2")

  lgsub("import tensorflow as tf", "library(tensorflow)", fixed = TRUE)
  lgsub("from tensorflow import keras", "library(keras)", fixed = TRUE)

  lgsub("keras$Input(", "layer_input(", fixed = TRUE)
  lgsub("(keras\\$)?layers\\$Dense\\(", "layer_dense(")
  lgsub("(keras\\$)?layers\\$LeakyReLU\\(",
        "layer_activation_leaky_relu(")
  lgsub("(keras\\$)?layers\\$Reshape\\(", "layer_reshape(")
  lgsub("(keras\\$)?layers\\$Conv2DTranspose\\(",
        "layer_conv_2d_transpose(")
  lgsub("(keras\\$)?layers\\$Conv3D\\(", "layer_conv_3d(")
  lgsub("(keras\\$)?layers\\$Conv2D\\(", "layer_conv_2d(")
  lgsub("(keras\\$)?layers\\$Conv1D\\(", "layer_conv_1d(")
  lgsub("(keras\\$)?layers\\$GlobalMaxPooling1D\\(",
        "layer_global_max_pooling_1d(")

  lgsub("(keras\\$)?layers\\$GlobalMaxPooling2D\\(",
        "layer_global_max_pooling_2d(")
  lgsub("(keras\\$)?layers\\$GlobalMaxPooling3D\\(",
        "layer_global_max_pooling_3d(")
  lgsub("keras$Sequential(", "keras_model_sequential(", fixed = TRUE)
  lgsub("$fit(", " %>% fit(", fixed = TRUE)
  lgsub("$compile(", " %>% compile(", fixed = TRUE)
  lgsub("$evaluate(", " %>% evaluate(", fixed = TRUE)

  lgsub("__init__ <-", "initialize <-", fixed = TRUE)

  lgsub("super\\(.*, self\\)\\.__init__\\((.*)\\)",
        "super$initialize(\\1)")


  lgsub("super\\(.*, self\\)\\.compile\\((.*)\\)",
        "super$compile(\\1)")

  lgsub("([^ ])=([^ ])", "\\1 = \\2")

  lgsub("www$", "www.", fixed = TRUE)
  lgsub("$com", ".com", fixed = TRUE)
  lgsub("$org", ".org", fixed = TRUE)
  lgsub("$html", ".html", fixed = TRUE)
  lgsub("$png", ".png", fixed = TRUE)
  lgsub("$qmd", ".qmd", fixed = TRUE)
  lgsub("$jpg", ".jpg", fixed = TRUE)
  lgsub("en$wikipedia", "en.wikipedia", fixed = TRUE)
  lgsub("e$g.", "e.g.", fixed=TRUE)

  lgsub("^(\\s*[^( ]+) =", "\\1 <-")

  x
}

ipynb_file <- "tensorflow/guide/intro_to_graphs.ipynb"
qmd_file <- sub("\\.ipynb$", ".qmd", ipynb_file)

unlink(qmd_file)
system(glue("quarto convert {ipynb_file}"))

x <- readLines(qmd_file)

x <- x[!startsWith(x, "#| id:")]
# replace "jupyter: python3"
if(x[2] == "jupyter: python3") {
  x[2] <- qmd_file %>%
    basename() %>%
    sub(".qmd", "", ., fixed = TRUE) %>%
    sub("_", " ", ., fixed = TRUE) %>%
    stringr::str_to_title() %>%
    sprintf("title: %s", .)
}

x <- translate_py_to_r(x)
writeLines(x, qmd_file)

file.edit(qmd_file)
rstudioapi::restartSession()



# tutobook_file <- "keras/guides/customizing_what_happens_in_fit.py"
# tutobook_file <- "keras/guides/preprocessing_layers.py"

# x <- readLines(tutobook_file)
# x <- tutobook_to_qmd(x)
# x <- translate_py_to_r(x)

# qmd_file <- sub("\\.py$", ".qmd", tutobook_file)
# writeLines(x, qmd_file)

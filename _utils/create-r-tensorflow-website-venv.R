#!/usr/bin/env -S Rscript --vanilla


if(!requireNamespace("remotes", quietly = TRUE))
  install.packages("remotes")

# remotes::update_packages()
remotes::install_github("rstudio/reticulate") #, force = TRUE)
remotes::install_github("rstudio/tensorflow") #, force = TRUE)
remotes::install_github("rstudio/keras") #, force = TRUE)
remotes::install_github("rstudio/tfdatasets") #, force = TRUE)
remotes::install_github("t-kalinowski/tfautograph") #, force = TRUE)

envname <- "r-tensorflow-website"

if("--fresh" %in% commandArgs(TRUE)) {
  # reticulate:::rm_all_reticulate_state()
  # unlink("~/.pyenv", recursive = TRUE)
  # unlink(file.path(reticulate::virtualenv_root(), envname), recursive = TRUE)
  unlink(reticulate:::virtualenv_path(envname), recursive = TRUE)
}



python <- reticulate::install_python(force = "--fresh" %in% commandArgs(TRUE))
reticulate::virtualenv_create(envname, python = python)

is_mac_arm64 <- function() {
  sys_info <- Sys.info()
  sys_info[["sysname"]] == "Darwin" && sys_info[["machine"]] ==  "arm64"
}

if(is_mac_arm64()) {
  # hop over current guardrail in tensorflow::install_tensorflow()
  # that requires a conda env.
  default_pkgs <- as.character(keras:::default_extra_packages())
  extra_pkgs <- c("keras-tuner", "ipython", "tensorflow_datasets")
  reticulate::py_install(c('tensorflow-macos', 'tensorflow-metal',
                           default_pkgs, extra_pkgs),
                         envname = envname,
                         pip = TRUE, pip_ignore_installed = TRUE)
} else {

  keras::install_keras(
    version = "release",
    method = "virtualenv",
    envname = envname,
    extra_packages = c("keras-tuner",
                       "ipython",
                       "tensorflow_datasets"))
}

if(tensorflow:::is_linux()) {
  # default pypi numpy wheel segfaults with R builds that link against
  # a system openblas, build numpy from source and it'll automatically
  # link to the same blas as R
  reticulate::py_install(
    "numpy", envname = envname, pip = TRUE,
    pip_options = c("--force-reinstall", "--no-binary numpy"))
}

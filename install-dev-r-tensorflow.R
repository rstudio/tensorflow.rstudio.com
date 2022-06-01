#!/usr/bin/env -S Rscript --vanilla


# remotes::update_packages()
remotes::install_github("rstudio/reticulate", force = TRUE)
remotes::install_github("rstudio/tensorflow", force = TRUE)
remotes::install_github("rstudio/keras", force = TRUE)
remotes::install_github("rstudio/tfdatasets", force = TRUE)
remotes::install_github("t-kalinowski/tfautograph", force = TRUE)

envname <- "r-tensorflow-site"

if("--fresh" %in% commandArgs(TRUE)) {
  reticulate::miniconda_uninstall()
  # unlink("~/.pyenv", recursive = TRUE)
  unlink(file.path(reticulate::virtualenv_root(), envname), recursive = TRUE)
}

python <- reticulate::install_python(force = "--fresh" %in% commandArgs(TRUE))
reticulate::virtualenv_create(envname, python = python)

keras::install_keras(
  version = "release",
  method = "virtualenv",
  envname = envname,
  extra_packages = c("keras-tuner",
                     "ipython",
                     "tensorflow_datasets")
)

reticulate::py_install(
  "numpy",
  envname = envname,
  pip = TRUE,
  pip_options = c("--force-reinstall", "--no-binary numpy")
)

#!/usr/bin/env Rscript

if (!requireNamespace("ecodown", quietly = TRUE))
  remotes::install_github("edgararuiz/ecodown")


library(glue)
library(fs)

dir_delete("reference")
dir_create("reference")

try(ecodown::ecodown_build(verbosity = "verbose"))

dir_ls("reference/") |>
  fs::path_file() |>
  lapply(function(pkg) {
    file_move(glue("reference/{pkg}/latest/reference"),
              glue("reference/_{pkg}"))
    dir_delete(glue("reference/{pkg}"))
    file_move(glue("reference/_{pkg}"), glue("reference/{pkg}"))
  })

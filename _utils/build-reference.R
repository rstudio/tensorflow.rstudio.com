#!/usr/bin/env Rscript

if (!requireNamespace("ecodown", quietly = TRUE))
  remotes::install_github("edgararuiz/ecodown")


library(glue)
library(fs)

dir_delete("reference")

cache_dir <- "/tmp/tf-site/ecodown-reference-cache"

if(dir_exists(cache_dir)) {
  cli::cli_alert("Reusing ecodown cache")
  fs::dir_copy(cache_dir, "reference")
} else {
  dir_create("reference")
  try(ecodown::ecodown_build(verbosity = "verbose"))
  fs::dir_copy("reference", cache_dir)
}


descs <- list(
  tensorflow = "Tensors, Graphs and other primatives",
  keras = "High level API for deep learning",
  tfdatasets = "Create efficient and fast data loading pipelines",
  tfautograph = "Tools for translating R code to Tensorflow Graphs",
  tfruns = "Track and visualize training runs and experiments",
  tfhub = "Access pre-trained models ready for fine-tuning and deployment",
  cloudml = "R interface to Google CloudML"
)

dir_ls("reference/") |>
  fs::path_file() |>
  lapply(function(pkg) {
    # browser()
    file_move(glue("reference/{pkg}/latest/reference"),
              glue("reference/_{pkg}"))
    dir_delete(glue("reference/{pkg}"))
    file_move(glue("reference/_{pkg}"), glue("reference/{pkg}"))
    index_pth <- glue("reference/{pkg}/index.md")
    index <- readLines(index_pth)

    index <- sub(glue("/reference/{pkg}/latest/reference/"),
                 glue("/reference/{pkg}/"),
                 index)


    index <- c(glue(
"---
title: {pkg}
description: {descs[[pkg]]}
---\n\n"), index)

    writeLines(index, index_pth)
  }) |> invisible()


writeLines(
r"----(---
title: Function reference
listing:
  type: grid
  sort: ""
  contents:
    - "tensorflow/index.qmd"
    - "keras/index.qmd"
    - "tfdatasets/index.qmd"
    - "tfautograph/index.qmd"
    - "tfruns/index.qmd"
    - "tfhub/index.qmd"
    - "cloudml/index.qmd"
---

# R packages

)----", "reference/index.qmd")


md_files <- fs::dir_ls("reference", pattern = "\\.md$", recurse = TRUE, type = "file")
qmd_files <- fs::path_ext_set(md_files, "qmd")
fs::file_move(md_files, qmd_files)



ff <- ll(pattern = "\\.ipynb$")
envir::import_from(glue, glue)

systemt <- function(cmd, ...) {
  message("+ ", cmd)
  system(cmd, ...)
}

for(f in ff) {
  systemt(glue("quarto convert {f}"))
}

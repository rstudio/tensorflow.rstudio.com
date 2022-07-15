
# writeLines("I ran!", "pre-render.output")

setwd("examples")
for(file in list.files(pattern = "[.]R$")) {
 rmd <- knitr::spin(file, knit = FALSE)
 fs::file_move(rmd, fs::path_ext_set(rmd, "qmd"))
}

#!/usr/bin/env -S Rscript --vanilla

if(!requireNamespace("remotes", quietly = TRUE))
  install.packages("remotes")

remotes::update_packages()
remotes::install_github("rstudio/reticulate") #, force = TRUE)
remotes::install_github("rstudio/tensorflow", force = TRUE)
remotes::install_github("rstudio/keras", force = TRUE)
remotes::install_github("rstudio/tfdatasets") #, force = TRUE)
remotes::install_github("t-kalinowski/tfautograph") #, force = TRUE)

remotes::install_cran(c("tidymodels", "tidyverse",
                        "GGally", "skimr", "coro",
                        "tfhub"))

envname <- "r-tensorflow-website"

if("--fresh" %in% commandArgs(TRUE))
  tryCatch(reticulate::virtualenv_remove(envname, confirm = FALSE),
           error = function(e) NULL)

python <- reticulate::install_python(version = "3.10:latest")

keras::install_keras(
  envname = envname,
  method = "virtualenv",
  python_version = python,
  configure_cuda_vars = FALSE,
  version = "default",
  # version = "release",
  new_env = TRUE,
  extra_packages = c("keras-tuner",
                     "ipython",
                     "tensorflow_datasets",
                     "tensorflow_hub",
                     "kaggle")
)

# this needs sudo access
# make this warning go away:
# 2023-08-07 12:04:57.949542: I tensorflow/compiler/xla/stream_executor/cuda/cuda_gpu_executor.cc:995] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero. See more at https://github.com/torvalds/linux/blob/v6.0/Documentation/ABI/testing/sysfs-bus-pci#L344-L355
# 2023-08-07 12:04:57.974706: I tensorflow/compiler/xla/stream_executor/cuda/cuda_gpu_executor.cc:995] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero. See more at https://github.com/torvalds/linux/blob/v6.0/Documentation/ABI/testing/sysfs-bus-pci#L344-L355
# 2023-08-07 12:04:57.974974: I tensorflow/compiler/xla/stream_executor/cuda/cuda_gpu_executor.cc:995] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero. See more at https://github.com/torvalds/linux/blob/v6.0/Documentation/ABI/testing/sysfs-bus-pci#L344-L355
# 2023-08-07 12:04:57.976186: I tensorflow/compiler/xla/stream_executor/cuda/cuda_gpu_executor.cc:995] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero. See more at https://github.com/torvalds/linux/blob/v6.0/Documentation/ABI/testing/sysfs-bus-pci#L344-L355
# 2023-08-07 12:04:57.976381: I tensorflow/compiler/xla/stream_executor/cuda/cuda_gpu_executor.cc:995] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero. See more at https://github.com/torvalds/linux/blob/v6.0/Documentation/ABI/testing/sysfs-bus-pci#L344-L355
# 2023-08-07 12:04:57.976570: I tensorflow/compiler/xla/stream_executor/cuda/cuda_gpu_executor.cc:995] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero. See more at https://github.com/torvalds/linux/blob/v6.0/Documentation/ABI/testing/sysfs-bus-pci#L344-L355
# 2023-08-07 12:04:58.054748: I tensorflow/compiler/xla/stream_executor/cuda/cuda_gpu_executor.cc:995] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero. See more at https://github.com/torvalds/linux/blob/v6.0/Documentation/ABI/testing/sysfs-bus-pci#L344-L355
# 2023-08-07 12:04:58.054985: I tensorflow/compiler/xla/stream_executor/cuda/cuda_gpu_executor.cc:995] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero. See more at https://github.com/torvalds/linux/blob/v6.0/Documentation/ABI/testing/sysfs-bus-pci#L344-L355
# 2023-08-07 12:04:58.055189: I tensorflow/compiler/xla/stream_executor/cuda/cuda_gpu_executor.cc:995] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero. See more at https://github.com/torvalds/linux/blob/v6.0/Documentation/ABI/testing/sysfs-bus-pci#L344-L355

# https://github.com/tensorflow/tensorflow/issues/42738#issuecomment-922422874
# https://stackoverflow.com/questions/44232898/memoryerror-in-tensorflow-and-successful-numa-node-read-from-sysfs-had-negativ

if(FALSE) {
  paths <- Sys.glob("/sys/bus/pci/devices/**/numa_node")
  paths <- paths[vapply(paths, \(p) identical(readLines(p), "-1"), logical(1L))]
  lapply(paths, \(p) writeLines("0", p))
  # sudo Rscript -e 'for(p in Sys.glob("/sys/bus/pci/devices/**/numa_node") if(identical(readLines(p), "-1")) {writeLines("0", p); cat("updated", p)}'

}

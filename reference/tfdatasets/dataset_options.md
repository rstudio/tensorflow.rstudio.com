# dataset_options


Get or Set Dataset Options




## Description

Get or Set Dataset Options





## Usage
```r
dataset_options(dataset, ...)
```




## Arguments


Argument      |Description
------------- |----------------
dataset | a tensorflow dataset
... | Valid values include:   *  A set of named arguments setting options. Names of nested attributes can be separated with a `"."` (see examples). The set of named arguments can be supplied individually to `...`, or as a single named list.  *  a `tf$data$Options()` instance.




## Details

The options are "global" in the sense they apply to the entire
dataset. If options are set multiple times, they are merged as long as
different options do not use different non-default values.





## Value

If values are supplied to ``...``, returns a ``tf.data.Dataset`` with the
given options set/updated. Otherwise, returns the currently set options for
the dataset.





## Examples

```r

# pass options directly:
range_dataset(0, 10) %>%
  dataset_options(
    experimental_deterministic = FALSE,
    threading.private_threadpool_size = 10
  )

# pass options as a named list:
opts <- list(
  experimental_deterministic = FALSE,
  threading.private_threadpool_size = 10
)
range_dataset(0, 10) %>%
  dataset_options(opts)

# pass a tf.data.Options() instance
opts <- tf$data$Options()
opts$experimental_deterministic <- FALSE
opts$threading$private_threadpool_size <- 10L
range_dataset(0, 10) %>%
  dataset_options(opts)

# get currently set options
range_dataset(0, 10) %>% dataset_options()

```





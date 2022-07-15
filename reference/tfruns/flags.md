# flags


Flags for a training run




## Description

Define the flags (name, type, default value, description) which paramaterize
a training run. Optionally read overrides of the default values from a
"flags.yml" config file and/or command line arguments.





## Usage
```r
flags(
  ...,
  config = Sys.getenv("R_CONFIG_ACTIVE", unset = "default"),
  file = "flags.yml",
  arguments = commandArgs(TRUE)
)

flag_numeric(name, default, description = NULL)

flag_integer(name, default, description = NULL)

flag_boolean(name, default, description = NULL)

flag_string(name, default, description = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
... | One or more flag definitions
config | The configuration to use. Defaults to the active configuration for the current environment (as specified by the ``R_CONFIG_ACTIVE`` environment variable), or ``default`` when unset.
file | The flags YAML file to read
arguments | The command line arguments (as a character vector) to be parsed.
name | Flag name
default | Flag default value
description | Flag description





## Value

Named list of training flags





## Examples

```r

library(tfruns)

# define flags and parse flag values from flags.yml and the command line
FLAGS <- flags(
  flag_numeric('learning_rate', 0.01, 'Initial learning rate.'),
  flag_integer('max_steps', 5000, 'Number of steps to run trainer.'),
  flag_string('data_dir', 'MNIST-data', 'Directory for training data'),
  flag_boolean('fake_data', FALSE, 'If true, use fake data for testing')
)

```






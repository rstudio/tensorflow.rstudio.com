# step_pretrained_text_embedding


Pretrained text-embeddings




## Description

`step_pretrained_text_embedding` creates a *specification* of a
 recipe step that will transform text data into its numerical
 transformation based on a pretrained model.





## Usage
```r
step_pretrained_text_embedding(
  recipe,
  ...,
  role = "predictor",
  trained = FALSE,
  handle,
  args = NULL,
  skip = FALSE,
  id = recipes::rand_id("pretrained_text_embedding")
)
```




## Arguments


Argument      |Description
------------- |----------------
recipe | A recipe object. The step will be added to the sequence of operations for this recipe.
... | One or more selector functions to choose variables.
role | Role for the created variables
trained | A logical to indicate if the quantities for preprocessing have been estimated.
handle | the Module handle to resolve.
args | other arguments passed to [hub_load()].
skip | A logical. Should the step be skipped when the recipe is baked by [recipes::bake.recipe()]? While all operations are baked when [recipes::prep.recipe()] is run, some operations may not be able to be conducted on new data (e.g. processing the outcome variable(s)). Care should be taken when using `skip = TRUE` as it may affect the computations for subsequent operations
id | A character string that is unique to this step to identify it.






## Examples


```r

library(tibble)
library(recipes)
df <- tibble(text = c('hi', "heello", "goodbye"), y = 0)

rec <- recipe(y ~ text, df)
rec <- rec %>% step_pretrained_text_embedding(
 text,
 handle = "https://tfhub.dev/google/tf2-preview/gnews-swivel-20dim-with-oov/1"
)


```






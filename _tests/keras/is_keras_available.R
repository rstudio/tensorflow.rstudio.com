# testthat utilty for skipping tests when Keras isn't available 
skip_if_no_keras <- function(version = NULL) { 
  if (!is_keras_available(version)) 
    skip("Required keras version not available for testing") 
} 
# use the function within a test 
test_that("keras function works correctly", { 
  skip_if_no_keras() 
  # test code here 
}) 

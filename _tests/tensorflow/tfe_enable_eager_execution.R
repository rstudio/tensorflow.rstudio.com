# load tensorflow and enable eager execution 
library(tensorflow) 
tfe_enable_eager_execution() 
# create a random 10x10 matrix 
x <- tf$random$normal(shape(10, 10)) 
# use it in R via as.matrix() 
heatmap(as.matrix(x)) 

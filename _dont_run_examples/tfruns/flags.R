library(tfruns) 
# define flags and parse flag values from flags.yml and the command line 
FLAGS <- flags( 
  flag_numeric('learning_rate', 0.01, 'Initial learning rate.'), 
  flag_integer('max_steps', 5000, 'Number of steps to run trainer.'), 
  flag_string('data_dir', 'MNIST-data', 'Directory for training data'), 
  flag_boolean('fake_data', FALSE, 'If true, use fake data for testing') 
) 

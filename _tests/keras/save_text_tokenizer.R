# vectorize texts then save for use in prediction 
tokenizer <- text_tokenizer(num_words = 10000) %>% 
fit_text_tokenizer(tokenizer, texts) 
save_text_tokenizer(tokenizer, "tokenizer") 
# (train model, etc.) 
# ...later in another session 
tokenizer <- load_text_tokenizer("tokenizer") 
# (use tokenizer to preprocess data for prediction) 

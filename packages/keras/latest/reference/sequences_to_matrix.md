# sequences_to_matrix


Convert a list of sequences into a matrix.




## Description

Convert a list of sequences into a matrix.





## Usage
```r
sequences_to_matrix(
  tokenizer,
  sequences,
  mode = c("binary", "count", "tfidf", "freq")
)
```




## Arguments


Argument      |Description
------------- |----------------
tokenizer | Tokenizer
sequences | List of sequences (a sequence is a list of integer word indices).
mode | one of "binary", "count", "tfidf", "freq".





## Value

A matrix






## See Also

Other text tokenization: 
`fit_text_tokenizer()`,
`save_text_tokenizer()`,
`text_tokenizer()`,
`texts_to_matrix()`,
`texts_to_sequences_generator()`,
`texts_to_sequences()`




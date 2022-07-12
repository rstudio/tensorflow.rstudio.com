# fit_text_tokenizer


Update tokenizer internal vocabulary based on a list of texts or list of
sequences.




## Description

Update tokenizer internal vocabulary based on a list of texts or list of
sequences.





## Usage
```r
fit_text_tokenizer(object, x)
```




## Arguments


Argument      |Description
------------- |----------------
object | Tokenizer returned by `text_tokenizer()`
x | Vector/list of strings, or a generator of strings (for memory-efficiency); Alternatively a list of "sequence" (a sequence is a list of integer word indices).







## See Also

Other text tokenization: 
`save_text_tokenizer()`,
`sequences_to_matrix()`,
`text_tokenizer()`,
`texts_to_matrix()`,
`texts_to_sequences_generator()`,
`texts_to_sequences()`




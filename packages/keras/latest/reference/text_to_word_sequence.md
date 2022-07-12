# text_to_word_sequence


Convert text to a sequence of words (or tokens).




## Description

Convert text to a sequence of words (or tokens).





## Usage
```r
text_to_word_sequence(
  text,
  filters = "!\"#$%&()*+,-./:;<=>?@[\\]^_`{|}~\t\n",
  lower = TRUE,
  split = " "
)
```




## Arguments


Argument      |Description
------------- |----------------
text | Input text (string).
filters | Sequence of characters to filter out such as punctuation. Default includes basic punctuation, tabs, and newlines.
lower | Whether to convert the input to lowercase.
split | Sentence split marker (string).





## Value

Words (or tokens)






## See Also

Other text preprocessing: 
`make_sampling_table()`,
`pad_sequences()`,
`skipgrams()`,
`text_hashing_trick()`,
`text_one_hot()`




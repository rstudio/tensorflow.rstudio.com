# text_one_hot


One-hot encode a text into a list of word indexes in a vocabulary of size n.




## Description

One-hot encode a text into a list of word indexes in a vocabulary of size n.





## Usage
```r
text_one_hot(
  input_text,
  n,
  filters = "!\"#$%&()*+,-./:;<=>?@[\\]^_`{|}~\t\n",
  lower = TRUE,
  split = " ",
  text = NULL
)
```




## Arguments


Argument      |Description
------------- |----------------
input_text | Input text (string).
n | Size of vocabulary (integer)
filters | Sequence of characters to filter out such as punctuation. Default includes basic punctuation, tabs, and newlines.
lower | Whether to convert the input to lowercase.
split | Sentence split marker (string).
text | for compatibility purpose. use ``input_text`` instead.





## Value

List of integers in [1, n]. Each integer encodes a word (unicity
non-guaranteed).






## See Also

Other text preprocessing: 
`make_sampling_table()`,
`pad_sequences()`,
`skipgrams()`,
`text_hashing_trick()`,
`text_to_word_sequence()`




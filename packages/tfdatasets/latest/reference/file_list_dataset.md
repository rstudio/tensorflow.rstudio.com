# file_list_dataset


A dataset of all files matching a pattern




## Description

A dataset of all files matching a pattern





## Usage
```r
file_list_dataset(file_pattern, shuffle = NULL, seed = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
file_pattern | A string, representing the filename pattern that will be matched.
shuffle | (Optional) If TRUE``, the file names will be shuffled randomly. Defaults to TRUE`
seed | (Optional) An integer, representing the random seed that will be used to create the distribution.




## Details

For example, if we had the following files on our filesystem: - /path/to/dir/a.txt -
/path/to/dir/b.csv - /path/to/dir/c.csv

If we pass "/path/to/dir/*.csv" as the ``file_pattern``, the dataset would produce: -
/path/to/dir/b.csv - /path/to/dir/c.csv





## Value

A dataset of string correponding to file names






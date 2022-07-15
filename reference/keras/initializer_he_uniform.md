# initializer_he_uniform


He uniform variance scaling initializer.




## Description

It draws samples from a uniform distribution within -limit, limit where
limit`` is sqrt(6 / fan_in)``where ``fan_in` is the number of input units in the
weight tensor.





## Usage
```r
initializer_he_uniform(seed = NULL)
```




## Arguments


Argument      |Description
------------- |----------------
seed | Integer used to seed the random generator.







## See Also

Other initializers: 
`initializer_constant()`,
`initializer_glorot_normal()`,
`initializer_glorot_uniform()`,
`initializer_he_normal()`,
`initializer_identity()`,
`initializer_lecun_normal()`,
`initializer_lecun_uniform()`,
`initializer_ones()`,
`initializer_orthogonal()`,
`initializer_random_normal()`,
`initializer_random_uniform()`,
`initializer_truncated_normal()`,
`initializer_variance_scaling()`,
`initializer_zeros()`




# sql_record_spec


A dataset consisting of the results from a SQL query




## Description

A dataset consisting of the results from a SQL query





## Usage
```r
sql_record_spec(names, types)

sql_dataset(driver_name, data_source_name, query, record_spec)

sqlite_dataset(filename, query, record_spec)
```




## Arguments


Argument      |Description
------------- |----------------
names | Names of columns returned from the query
types | List of ``tf$DType`` objects (e.g. ``tf$int32``, ``tf$double``, ``tf$string``) representing the types of the columns returned by the query.
driver_name | String containing the database type. Currently, the only supported value is 'sqlite'.
data_source_name | String containing a connection string to connect to the database.
query | String containing the SQL query to execute.
record_spec | Names and types of database columns
filename | Filename for the database





## Value

A dataset






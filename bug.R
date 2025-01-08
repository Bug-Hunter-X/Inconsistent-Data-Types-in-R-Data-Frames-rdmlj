```R
# This code attempts to create a data frame with inconsistent data types in a column.
# It will throw a warning, but might not always give an error.

df <- data.frame(col1 = c(1, 2, "3"))
```
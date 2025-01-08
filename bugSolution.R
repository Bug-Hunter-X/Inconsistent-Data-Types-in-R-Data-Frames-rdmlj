```R
# Solution 1: Explicit type conversion

df <- data.frame(col1 = as.numeric(c(1, 2, "3"))) # Convert to numeric before creating

# Solution 2: Using data.table (more robust)
library(data.table)
dt <- data.table(col1 = c(1, 2, "3"))
dt[, col1 := as.numeric(col1)] # Convert after creation

# Solution 3:  Check types and handle them appropriately
col_data <- c(1, 2, "3")
if(all(sapply(col_data,is.numeric))) {
  df <- data.frame(col1 = col_data)
} else {
  # Handle the mixed types appropriately 
  # Perhaps with message indicating the issue or use different data structure
  print("Mixed data types detected. Handle accordingly.")
}
```
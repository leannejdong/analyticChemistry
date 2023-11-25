## Goal: produce a program that calculates pH from data measurements in a csv file

1. Read the CSV file into a data frame
Assume the CSV file has columns named `H+`, `OH-`, and other relevant data

2. Explore the data
 - Display the first few rows of the data frame
 - Check for missing values and summarize the dataset
 - Hint: Use functions like `head()`, `summary()`, and `any()`
 
3. Data Transformation

Calculate the concentration of `H+` and `OH-` ions from the given data.
Hint: pH = -log10([H+])

4. Calculate pH
 - Use the concentrations of H+ and OH- ions to calculate pH
 - `pH = -log10([H+])`
 - Hint: Use the `log10()` function
 
5. Plotting: Create a scatter plot
 of pH against a relevant variable from the dataset
 - Add appropriate labels and title to the plot
 - Hint: Use the `plot()` function
 - Try `ggplot`
 
 6. Create a function: Write a function that takes `H+` concentration as input and returns the corresponding `pH` value
 - Test the function with a sample concentration
 - Hint: Use the function syntax in R
 
 7. Looping: Use a loop 
 to iterate through a vector of `H+` concentrations and calculate the corresponding `pH` values
 
 8. File Output
 
  - Save result to a new csv file
  - Create a new CSV file with columns for `H+` concentration, `OH-` concentration, and `pH`
  - Save the calculated values to this new file
  - Hint: Use the write.csv() function
  
 9. Error handling
 
  - Check for invalid data (e.g., negative concentrations) and handle them appropriately
  - Display a meaningful error message when invalid data is encountered
  
  - Hint: Use if statements for validation
  
```r

# Function to calculate pH from H+ concentration
calculate_pH <- function(H_concentration) {
  # Check for negative concentration
  if (H_concentration < 0) {
    stop("Error: Concentration cannot be negative.")
  }
  
  # Calculate pH
  pH <- -log10(H_concentration)
  return(pH)
}

# Test the function with some sample data
sample_concentration <- -1  # Change this to test different concentrations
tryCatch({
  result <- calculate_pH(sample_concentration)
  cat("pH:", result, "\n")
}, error = function(e) {
  cat("Error:", e$message, "\n")
})
```

10 Documentation
Use `#` to denote comment. More formally, 
Roxygen2-style documentation is written as comments using a special syntax. The comments start with #' (hash followed by an apostrophe).

```r
#' @title My Function

#'

#' @description This function does something.

#'

#' @param x A numeric vector.

#'

#' @return The result of the operation.

#'

#' @examples

#' my_function(1:5)

#'

#' @seealso

#' \code{\link{other_function}}

#'

#' @export

```


 
 

 
 
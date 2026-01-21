# Function to divide two numbers
div_numbers <- function(a, b) {
  return(a / b)
}

# Test the function with different sets of inputs
result1 <- div_numbers(5, 10)
result2 <- div_numbers(-3, 7)
result3 <- div_numbers(0, 0)
result4 <- div_numbers(3.5, 2.1)

# Print the test results
cat("Result of division of 5 and 10:", result1, "\n")
cat("Result of division of -3 and 7:", result2, "\n")
cat("Result of division of 0 and 0:", result3, "\n")
cat("Result of division of 3.5 and 2.1:", result4, "\n")

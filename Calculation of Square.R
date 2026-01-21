# Function to calculate the square of a number
calculate_square <- function(number) {
  return(number * number)
}

# Test the function with different sets of inputs
num1 <- 4
num2 <- -3
num3 <- 0
num4 <- 5.7

square1 <- calculate_square(num1)
square2 <- calculate_square(num2)
square3 <- calculate_square(num3)
square4 <- calculate_square(num4)

# Print the test results
cat("Square of 4:", square1, "\n")
cat("Square of -3:", square2, "\n")
cat("Square of 0:", square3, "\n")
cat("Square of 5.7:", square4, "\n")

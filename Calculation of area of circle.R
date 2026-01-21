# Function to calculate the area of a circle
calculate_circle_area <- function(radius) {
  return(pi * radius * radius)
}

# Test the function with different sets of inputs
radius1 <- 3
radius2 <- 5.5
radius3 <- 0
radius4 <- 7.2

area1 <- calculate_circle_area(radius1)
area2 <- calculate_circle_area(radius2)
area3 <- calculate_circle_area(radius3)
area4 <- calculate_circle_area(radius4)

# Print the test results
cat("Area of circle with radius 3:", area1, "\n")
cat("Area of circle with radius 5.5:", area2, "\n")
cat("Area of circle with radius 0:", area3, "\n")
cat("Area of circle with radius 7.2:", area4, "\n")

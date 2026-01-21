# Heights vector
heights <- c(150, 160, 165, 155, 170, 175, 180)

# Calculations
mean_height <- mean(heights)
median_height <- median(heights)
max_height <- max(heights)
min_height <- min(heights)
taller_than_165 <- sum(heights > 165)
sorted_heights <- sort(heights)

# Print results
cat("Mean height:", mean_height, "\n")
cat("Median height:", median_height, "\n")
cat("Maximum height:", max_height, "\n")
cat("Minimum height:", min_height, "\n")
cat("Students taller than 165 cm:", taller_than_165, "\n")
cat("Sorted heights:", sorted_heights, "\n")

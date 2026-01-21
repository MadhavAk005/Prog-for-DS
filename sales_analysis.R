# Sales data (in thousands)
sales <- c(12, 15, 10, 18, 20, 22, 25, 28, 30, 35, 40, 45)

# Calculations
total_sales <- sum(sales)
average_sales <- mean(sales)
months_above_25k <- which(sales > 25)

# Print results
cat("Total sales:", total_sales, "\n")
cat("Average monthly sales:", average_sales, "\n")
cat("Months with sales above 25k:", months_above_25k, "\n")

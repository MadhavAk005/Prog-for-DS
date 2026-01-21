# Stock closing prices
closing_prices <- c(
  120, 122, 118, 121, 119, 117, 123, 125, 126, 124,
  128, 130, 129, 131, 135, 134, 136, 137, 140, 138,
  139, 141, 142, 144, 143, 145, 146, 148, 147, 149
)

# Calculations
average_price <- mean(closing_prices)
max_price <- max(closing_prices)
min_price <- min(closing_prices)

# Print results
cat("Average closing price:", average_price, "\n")
cat("Maximum price:", max_price, "\n")
cat("Minimum price:", min_price, "\n")

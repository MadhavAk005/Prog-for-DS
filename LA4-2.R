# --------------------------------------------
# Data Reshaping using tidyr in R
# --------------------------------------------

# Install and load required libraries
# install.packages("tidyr")
# install.packages("dplyr")

library(tidyr)
library(dplyr)

# --------------------------------------------
# 1. Wide → Long Transformation
# --------------------------------------------

# Create wide format dataset
wide_data <- data.frame(
  ID = c(1, 2, 3),
  Year2019 = c(10, 15, 20),
  Year2020 = c(12, 18, 24)
)

cat("Original Wide Data:\n")
print(wide_data)

# Convert wide to long using gather()
long_data <- gather(
  wide_data,
  key = "Year",
  value = "Value",
  Year2019, Year2020
)

cat("\nLong Format Data:\n")
print(long_data)


# --------------------------------------------
# 2. Long → Wide Transformation
# --------------------------------------------

# Create long format dataset
long_dataset <- data.frame(
  ID = c(1,1,2,2,3,3),
  Year = c(2019,2020,2019,2020,2019,2020),
  Value = c(10,12,15,18,20,24)
)

cat("\nOriginal Long Data:\n")
print(long_dataset)

# Convert long to wide using spread()
wide_dataset <- spread(
  long_dataset,
  key = Year,
  value = Value
)

cat("\nWide Format Data:\n")
print(wide_dataset)



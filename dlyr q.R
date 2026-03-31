# Install and load required library
if (!require(dplyr)) install.packages("dplyr")
library(dplyr)

# -------------------------------
# Create datasets
# -------------------------------
donors <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Email = c("alice@gmail.com", "bob@gmail.com", "charlie@gmail.com", "david@gmail.com")
)

donations <- data.frame(
  Name = c("Alice", "Bob", "Eve", "Charlie"),
  Amount = c(100, 150, 200, 250),
  Date = as.Date(c("2024-01-10", "2024-02-15", "2024-03-20", "2024-04-05"))
)

# -------------------------------
# 1. Donors with contributions + emails
# -------------------------------
donors_with_donations <- inner_join(donors, donations, by = "Name")

# -------------------------------
# 2. Donations with missing donor details
# -------------------------------
missing_donors <- anti_join(donations, donors, by = "Name")

# -------------------------------
# 3. Perfect matches in both datasets
# -------------------------------
perfect_matches <- inner_join(donors, donations, by = "Name")

# -------------------------------
# 4. Unmatched records in either dataset
# -------------------------------
all_records <- full_join(donors, donations, by = "Name")

unmatched_records <- all_records %>%
  filter(is.na(Email) | is.na(Amount))

# -------------------------------
# Display results
# -------------------------------
cat("Donors with Donations:\n")
print(donors_with_donations)

cat("\nDonations with Missing Donor Details:\n")
print(missing_donors)

cat("\nPerfect Matches:\n")
print(perfect_matches)

cat("\nUnmatched Records (Either Dataset):\n")
print(unmatched_records)

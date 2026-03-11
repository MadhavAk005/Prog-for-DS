
# --------------------------------------------
# E-Commerce Join Operations in R
# --------------------------------------------

# Step 1: Install and Load Required Library
# install.packages("dplyr")   # Run once if not installed
library(dplyr)

# --------------------------------------------
# Step 2: Create Customers Dataset
# --------------------------------------------

customers <- data.frame(
  CustomerName = c(
    "John Doe",
    "Jane Smith",
    "Robert Brown",
    "Emily Davis",
    "Michael Green"
  ),
  Email = c(
    "john.doe@example.com",
    "jane.smith@example.com",
    "robert.brown@example.com",
    "emily.davis@example.com",
    "michael.green@example.com"
  ),
  stringsAsFactors = FALSE
)

print("Customers Dataset:")
print(customers)


# --------------------------------------------
# Step 3: Create Purchases Dataset
# --------------------------------------------

purchases <- data.frame(
  CustomerName = c(
    "John Doe",
    "Jane Smith",
    "Robert Brown",
    "Sarah Johnson",
    "Emily Davis"
  ),
  PurchaseAmount = c(150, 200, 120, 180, 220),
  Date = c(
    "01-01-2023",
    "02-01-2023",
    "03-01-2023",
    "04-01-2023",
    "05-01-2023"
  ),
  stringsAsFactors = FALSE
)

print("Purchases Dataset:")
print(purchases)


# --------------------------------------------
# Step 4: Perform Join Operations
# --------------------------------------------

# 1. Left Join (All customers + matching purchases)
left_join_result <- left_join(customers, purchases, by = "CustomerName")

print("Left Join Result:")
print(left_join_result)


# 2. Right Join (All purchases + matching customers)
right_join_result <- right_join(customers, purchases, by = "CustomerName")

print("Right Join Result:")
print(right_join_result)


# 3. Inner Join (Only matching records)
inner_join_result <- inner_join(customers, purchases, by = "CustomerName")

print("Inner Join Result:")
print(inner_join_result)


# 4. Full Join (All records from both datasets)
full_join_result <- full_join(customers, purchases, by = "CustomerName")

print("Full Join Result:")
print(full_join_result)


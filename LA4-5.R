# ------------------------------------------------------------
# Product Inventory Management using JSON in R
# ------------------------------------------------------------

# Step 1: Install package (run once)
# install.packages("jsonlite")

# Step 2: Load library
library(jsonlite)

# Step 3: Check and set working directory
getwd()
# setwd("path_to_folder_containing_inventory_json")

# Step 4: Read existing JSON inventory
inventory <- fromJSON("inventory.json")

cat("Original Inventory:\n")
print(inventory)

# Step 5: Add a new product
new_product <- data.frame(
  product_id = "P105",
  name = "Mouse",
  category = "Accessories",
  price = 800,
  stock = 40,
  stringsAsFactors = FALSE
)

# Append new product to inventory
updated_inventory <- rbind(inventory, new_product)

# Step 6: Write updated inventory to new JSON file
write_json(
  updated_inventory,
  "updated_inventory.json",
  pretty = TRUE,
  auto_unbox = TRUE
)

cat("\nUpdated inventory written to updated_inventory.json\n")

# Step 7: Verify by reading the updated JSON file
verified_inventory <- fromJSON("updated_inventory.json")

cat("\nVerified Updated Inventory:\n")
print(verified_inventory)



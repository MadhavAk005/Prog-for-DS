# Vector with duplicates
numbers <- c(5, 3, 8, 3, 9, 5, 2, 8)

# Unique elements
unique_elements <- unique(numbers)

# Duplicated elements
duplicate_elements <- numbers[duplicated(numbers)]

# Remove duplicates
no_duplicates <- unique(numbers)

# Print results
cat("Unique elements:", unique_elements, "\n")
cat("Duplicate elements:", duplicate_elements, "\n")
cat("Vector without duplicates:", no_duplicates, "\n")

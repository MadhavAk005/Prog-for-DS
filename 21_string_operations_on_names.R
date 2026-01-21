# Vector of names
names <- c("Alice", "Bob", "Charlie", "David")

# Convert to uppercase
upper_names <- toupper(names)

# Count characters
name_lengths <- nchar(names)

# Check names containing letter 'a'
contains_a <- grepl("a", names, ignore.case = TRUE)

# Print results
cat("Uppercase names:", upper_names, "\n")
cat("Number of characters:", name_lengths, "\n")
cat("Names containing 'a':", names[contains_a], "\n")

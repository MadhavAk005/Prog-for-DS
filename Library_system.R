# Initialize book borrowing system
library_books <- list(
  "The Hobbit" = c("Alice", "Bob"),
  "1984" = c("Charlie", "Alice"),
  "Moby Dick" = c("Bob")
)

# Function to add a new book
add_book <- function(book, borrowers) {
  library_books[[book]] <<- borrowers
}

# Function to remove a book
remove_book <- function(book) {
  library_books[[book]] <<- NULL
}

# Calculate total borrowers for each book
total_borrowers <- sapply(library_books, length)

# Find book with highest and lowest borrowers
highest_book <- names(which.max(total_borrowers))
lowest_book <- names(which.min(total_borrowers))

# Print results
print(total_borrowers)
cat("Book with highest borrowers:", highest_book, "\n")
cat("Book with lowest borrowers:", lowest_book, "\n")

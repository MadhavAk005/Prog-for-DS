# Initialize customer purchases
customer_purchases <- list()

# Function to add customer
add_customer <- function(name, purchases) {
  customer_purchases[[name]] <<- purchases
}

# Function to remove customer
remove_customer <- function(name) {
  customer_purchases[[name]] <<- NULL
}

# Function to find total purchase
total_purchase <- function(name) {
  sum(customer_purchases[[name]])
}

# Test cases
add_customer("John", c(200, 150, 300))
add_customer("Alice", c(400, 250))

print(customer_purchases)
cat("Total purchase of John:", total_purchase("John"), "\n")

remove_customer("Alice")
print(customer_purchases)

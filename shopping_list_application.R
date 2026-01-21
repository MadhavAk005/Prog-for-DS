# Initialize shopping list
shopping_list <- list()

# Function to add item
add_item <- function(item) {
  shopping_list[[length(shopping_list) + 1]] <<- item
}

# Function to remove item
remove_item <- function(item) {
  shopping_list <<- shopping_list[shopping_list != item]
}

# Function to view items
view_items <- function() {
  print(shopping_list)
}

# Test cases
add_item("Milk")
add_item("Bread")
add_item("Eggs")
view_items()

remove_item("Bread")
view_items()

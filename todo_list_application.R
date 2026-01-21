# Initialize to-do list
todo_list <- list()

# Function to add task
add_task <- function(task) {
  todo_list[[task]] <<- FALSE
}

# Function to mark task completed
complete_task <- function(task) {
  todo_list[[task]] <<- TRUE
}

# Function to view tasks
view_tasks <- function() {
  print(todo_list)
}

# Test cases
add_task("Study R")
add_task("Complete lab record")
view_tasks()

complete_task("Study R")
view_tasks()

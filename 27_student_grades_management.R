# Initialize student grades list
student_grades <- list()

# Function to add student grade
add_grade <- function(name, grade) {
  student_grades[[name]] <<- grade
}

# Function to remove student
remove_student <- function(name) {
  student_grades[[name]] <<- NULL
}

# Function to calculate average grade
average_grade <- function() {
  mean(unlist(student_grades))
}

# Test cases
add_grade("Alice", 85)
add_grade("Bob", 78)
add_grade("Charlie", 92)

print(student_grades)
cat("Average grade:", average_grade(), "\n")

remove_student("Bob")
print(student_grades)

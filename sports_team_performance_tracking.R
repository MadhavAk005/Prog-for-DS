# Initialize sports team scores
team_scores <- list()

# Function to add team
add_team <- function(team, scores) {
  team_scores[[team]] <<- scores
}

# Function to remove team
remove_team <- function(team) {
  team_scores[[team]] <<- NULL
}

# Function to calculate average score
average_score <- function(team) {
  mean(team_scores[[team]])
}

# Test cases
add_team("Team A", c(80, 85, 90))
add_team("Team B", c(70, 75, 78))

print(team_scores)
cat("Average score of Team A:", average_score("Team A"), "\n")

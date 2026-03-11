# -------------------------------
# Task 1 — Create Column Vectors
# -------------------------------

PatientID <- c(
  "HOS1001","HOS1002","HOS1003","HOS1004","HOS1005",
  "HOS1006","HOS1007","HOS1008","HOS1009","HOS1010"
)

Name <- c(
  "Arjun Menon","Bhavana Iyer","Chirag Gupta","Devika Nair","Eshwar Rao",
  "Farida Sheikh","Gaurav Kumar","Harini Krishnan","Ishita S","Jatin Verma"
)

Department <- c(
  "Cardiology","Neurology","Endocrinology","Pulmonology","Cardiology",
  "Endocrinology","Neurology","Pulmonology","Cardiology","Endocrinology"
)

Diagnosis <- c(
  "Hypertension","Migraine","Type-2 Diabetes","Asthma","Hypertension",
  "Thyroid Disorder","Epilepsy","COPD","Arrhythmia","Type-1 Diabetes"
)

Test1 <- c(82,71,90,64,95,60,78,68,87,83)
Test2 <- c(76,69,92,70,94,63,82,72,85,79)
Test3 <- c(88,73,86,67,93,61,79,70,90,77)
Test4 <- c(84,75,91,72,96,66,81,69,88,85)

# Duplicate column as required
Test3_Score <- Test3


# -------------------------------
# Task 2 — Build the Data Frame
# -------------------------------

patients <- data.frame(
  PatientID = PatientID,
  Name = Name,
  Department = Department,
  Diagnosis = Diagnosis,
  Test1 = Test1,
  Test2 = Test2,
  Test3 = Test3,
  Test4 = Test4,
  Test3_Score = Test3_Score,
  stringsAsFactors = FALSE
)

# Display structure and preview
str(patients)
head(patients)


# -----------------------------------------
# Task 3 — Patient-Level Sum, Average, Rank
# -----------------------------------------

# Sum of test scores
patients$Sum <- rowSums(
  patients[, c("Test1","Test2","Test3","Test4")]
)

# Average score
patients$Average <- patients$Sum / 4

# Rank (highest sum = rank 1)
patients$Rank <- rank(-patients$Sum, ties.method = "min")

# Print full table
print(patients)

# Sorted by Rank
patients_by_rank <- patients[order(patients$Rank), ]
print(patients_by_rank)

# Tie handling note
cat("Tie strategy used: ties.method = 'min'\n")


# -----------------------------------------
# Task 4 — Test-Wise Average (Overall)
# -----------------------------------------

test_cols <- c("Test1","Test2","Test3","Test4")

test_wise_avg <- colMeans(
  patients[, test_cols],
  na.rm = TRUE
)

cat("Test-wise Average Scores:\n")
print(test_wise_avg)


# -------------------------------------------------
# Task 5 — Department-Wise Averages (Per Test + Overall)
# -------------------------------------------------

dept_test_avg <- aggregate(
  patients[, test_cols],
  by = list(Department = patients$Department),
  FUN = function(x) mean(x, na.rm = TRUE)
)

# Overall department average
dept_test_avg$Overall_Average <- rowMeans(
  dept_test_avg[, test_cols],
  na.rm = TRUE
)

# Optional: sort departments by overall average (descending)
dept_test_avg <- dept_test_avg[
  order(-dept_test_avg$Overall_Average),
]

print(dept_test_avg)



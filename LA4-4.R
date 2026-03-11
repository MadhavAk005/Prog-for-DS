#Step 1:Install, Load Packages and set working directory(WD)
#install required package ( one time per machine)
#Run install.packages if it is for first time else run code form load packages
install.packages("DBI")
install.packages("dplyr")
install.packages("RSQLite") 

# Load packages
library("DBI")  # To interact with databases such as SQLite, MySQL, PostgreSQL
library("dplyr") # To use its functions on the database!
library("RSQLite") # To access an SQLite database

#Get Working Directory details and Set Working directory path of Database
getwd()
setwd("E:\\1_Academic\\1-Courses\\2_ComputerSoftware\\Programming_for_Data-Science\\Lab\\Database")

#Step 2:
#Create a "connection" to the RDMS
db_connection <-dbConnect(SQLite(), dbname = 	"songs.db")

#Step 3:
#Create a reference to the "songs" table in the database
songs_table <-tbl(db_connection,"songs")
print(songs_table)

# Construct a query from the `songs_table` for song titles by Queen (artist id 11)
queen_songs_query <- songs_table %>%
  filter(artist_id == 11) %>%
  select(title)
print(queen_songs_query)

# Display the SQL syntax stored in the query `queen_songs_query`
show_query(queen_songs_query)

# Execute the `queen_songs_query` request, returning the *actual data* from the database
queen_songs_data <- collect(queen_songs_query) # returns a tibble
print(queen_songs_data)

#Step 4
#Disconnect DB
dbDisconnect(db_connection)


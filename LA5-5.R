
# Install necessary package
install.packages("leaflet")
# Load the necessary package(s)
library(leaflet)

#Step1: 
# Initialize map and add base tiles
map1 <- leaflet() %>%
  addTiles() %>%
  setView(lng = 80.1309, lat = 12.9699, zoom = 10)
# Display the map
map1

#Step2: 
# Add a marker with a popup
map2 <- map1 %>%
 addMarkers(lng = 80.1309, lat = 12.9699, popup = "Hello from Katpadi!")
 # Display the map
Map2

#Step3: 
# Add a circle marker with customized color and radius
map3 <- map2 %>%
 addCircleMarkers(
lng = 80.2, lat = 12.95,
color = "red", radius = 8,
label = "This is a circle marker!“
)
 # Display the map
Map3

#Step4: 
# Add a circle marker with customized color and radius
map3 <- map2 %>%
 addCircleMarkers(
lng = 80.2, lat = 12.95,
color = "red", radius = 8,
label = "This is a circle marker!“
)
 # Display the map
Map3




# --------------------------------------------
# Starwars Dataset Analysis (Base R)
# --------------------------------------------

# Load dataset
data(starwars, package = "dplyr")

# --------------------------------------------
# 1. Extract required columns
# --------------------------------------------

sw <- starwars[, c("name","species","height","mass","homeworld","gender")]

# --------------------------------------------
# 2. Filter species with more than two characters
# --------------------------------------------

species_counts <- table(sw$species)

valid_species <- names(species_counts[species_counts > 2])

sw_filtered <- sw[sw$species %in% valid_species, ]

# --------------------------------------------
# 3. Create new columns
#    height in meters
#    mass categories
# --------------------------------------------

sw_filtered$height_m <- sw_filtered$height / 100

sw_filtered$weight_category <- cut(
  sw_filtered$mass,
  breaks = c(-Inf, 60, 90, Inf),
  labels = c("Light", "Medium", "Heavy")
)

# --------------------------------------------
# 4. Average height for each species-gender combination
# --------------------------------------------

avg_height_species_gender <- aggregate(
  height_m ~ species + gender,
  data = sw_filtered,
  FUN = function(x) mean(x, na.rm = TRUE)
)

print(avg_height_species_gender)

# --------------------------------------------
# 5. Top three species with highest average height
# --------------------------------------------

avg_height_species <- aggregate(
  height_m ~ species,
  data = sw_filtered,
  FUN = function(x) mean(x, na.rm = TRUE)
)

avg_height_species_sorted <- avg_height_species[
  order(-avg_height_species$height_m),
]

top3_species <- head(avg_height_species_sorted, 3)

print(top3_species)


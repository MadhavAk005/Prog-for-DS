# Sensor readings
temperature <- c(22, 23, 21, 24, 22, 23)
humidity <- c(60, 62, 61, 63, 65, 64)
pressure <- c(1012, 1013, 1011, 1014, 1015, 1013)

# Averages
avg_temp <- mean(temperature)
avg_humidity <- mean(humidity)
avg_pressure <- mean(pressure)

# Print results
cat("Average Temperature:", avg_temp, "\n")
cat("Average Humidity:", avg_humidity, "\n")
cat("Average Pressure:", avg_pressure, "\n")

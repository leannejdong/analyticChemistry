# Generate random pH data and another variable
set.seed(123)  # Setting a seed for reproducibility

# Number of data points
n <- 100

# Generate random pH values between 1 and 14
pH <- runif(n, 1, 14)

# Generate another variable (e.g., concentration)
concentration <- runif(n, 0, 100)

# Create a data frame
data <- data.frame(pH = pH, concentration = concentration)

# Print the first few rows of the generated data
print(head(data))

# Save the data to a CSV file named 'data.csv'
write.csv(data, "data/pH.csv", row.names = FALSE)

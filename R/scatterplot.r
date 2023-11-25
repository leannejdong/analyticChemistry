# Exercise 5: Create a scatter plot
# s measured pH values along with concentration.
# Load the CSV file into a data frame and create a scatter plot of pH against concentration
# Add appropriate labels and title to the plot.

# Hint:
# 1. Use the read.csv() function to load the data into a data frame.
# 2. Extract the relevant columns for pH and the other variable.
# 3. Use the plot() function to create the scatter plot.
# 4. Customize the plot by adding labels to the x and y axes, and a title.
# 5. Display the plot.

data <- read.csv("data/pH.csv")
pH <- data$pH
concentration <- data$concentration
plot(concentration, pH, main = "Scatter Plot of pH against concentration", 
      xlab = "concentration", ylab = "pH")

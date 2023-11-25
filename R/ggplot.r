# Exercise 5: Create a scatter plot using ggplot2
# Measured pH values along with concentration in their experiment.
# Load the CSV file into a data frame and create a scatter plot of pH against the relevant variable using ggplot2.
# Add appropriate labels and title to the plot.

# Hint:
# 1. Use the read.csv() function to load the data into a data frame.
# 2. Load the ggplot2 library using library(ggplot2). 
# 3. Use the ggplot() function to initialize the plot, and aes() to specify the mapping of variables to aesthetics.
# 4. Add a geom_point() layer to create the scatter plot.
# 5. Customize the plot by adding labels to the x and y axes, and a title.
# 6. Display the plot.

# ggplot2 follows a layered approach. 
# You add layers to your plot using + to add points, lines, smooths, labels, etc., 
# making it more modular and customizable.

# Basic Structure of ggplot2:
# initializing a plot with the ggplot() function and then adding layers to it.
# Use aes() (aesthetic mapping) to specify which variables are mapped to x and y axes.
# Eg: ggplot(data = your_data, aes(x = variable1, y = variable2))

library(ggplot2)
data <- read.csv("data/pH.csv")
ggplot(data, aes(x = concentration, y = pH)) +
geom_point() +
  geom_smooth(method = "lm", se = FALSE)+
   labs(title = "Scatter Plot of pH against concentration via ggplot",
        x = "concentration", y = "pH")+
  geom_point() +
  labs(title = "Scatter Plot", x = "concentration", y = "pH") +
  theme_minimal()

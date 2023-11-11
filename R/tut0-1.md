# Getting started

## Install R and R studio


We will write our programs on a online platform (an IDE) called Rstudio Cloud, which makes it platform independent - we access the program the same way on a PC, Mac, or Linux. The Rstudio Cloud environment is divided into 4 main sections, with the most important elements listed below.

Top left: Script - where you write R code

Bottom left: Console - show output

Top right: Environment - we will mostly ignore this

Bottom right: show Plots, help, packages

A package is set of programs that R can call, such as a statistical package. There are base packages that come with R, and there are many that have to be added. Default Packages are listed in the bttom right pane. To add a package use install and type name of packages.

Some important packages used here:

To start writing a program in Rstudio Cloud:

from a Workspace (like a file folder that can contain related programs) , select New project, and fromthe menu:
File ——> Newfile —–> Rscript

\& start typing!

To run a program, highlight the code and select `run`,

When you run a script program, results and error messages will appear on the console, and plots appear on the plot area.

## R basics

- data types

- operators

```r
# Simple arithmetic
2 + 3

# Assigning values to variables
x <- 5
y <- 10
x + y

```
- simple arithmetic

## R packages

For students working on non-linear regression problems in analytic chemistry, there are several R packages that are particularly useful. Non-linear regression is often applied to fitting complex models to experimental data. Here are some key packages that you can recommend for installing:

1. minpack.lm:
Purpose: This package provides the nlsLM function, an extension of the nls function, which allows for non-linear least squares regression with more robust algorithms.
Installation: `install.packages("minpack.lm")`

```r
library(minpack.lm)
model <- nlsLM(y ~ a * exp(b * x), data = your_data, start = list(a = 1, b = 1))
```

2. nls:
Purpose: The base R nls (non-linear least squares) function is widely used for fitting non-linear models to data.
Installation: Already included in the base R installation.
Example:

```r
library(nls)
model <- nls(y ~ a * exp(b * x), data = your_data, start = list(a = 1, b = 1))
```

3. drc:
Purpose: The `drc` package is specifically designed for dose-response analysis, including non-linear regression models.
Installation: install.packages("drc")
Example:

```r
library(drc)
model <- drm(response ~ dose, data = your_data, fct = LL.4())
```

4. nlme:
Purpose: While primarily designed for linear and nonlinear mixed-effects models, nlme can also be used for non-linear regression models.
Installation: Already included in the base R installation.
Example:

```r
library(nlme)
model <- nlme(y ~ a * exp(b * x), data = your_data, fixed = a + b ~ 1, start = c(a = 1, b = 1))

```

5. growthcurver:
Purpose: Specifically designed for fitting growth curves, which often involve non-linear regression.
Installation: install.packages("growthcurver")
Example:

```r
library(growthcurver)
model <- drm(y ~ SSlogis(x, a, b, c), data = your_data, start = list(a = 1, b = 1, c = 1))

```

6. Chemometrics:

```r
library(chemometrics)

# Perform principal component analysis (PCA)
pca_result <- pca(your_data[, c("Variable1", "Variable2", "Variable3")])
```

7. Spectroscopy Analysis:
```r
library(hyperSpec)
# Create a hyperSpec object
spectro_data <- read.specref("path/to/spectro/data.txt")
```


Part 2: Working with data

## Vectors and dataframes

```r
# Creating a vector
numeric_vector <- c(1, 2, 3, 4, 5)

# Creating a data frame
data_frame <- data.frame(Name = c("John", "Jane", "Bob"),
                         Age = c(25, 30, 22))

```


## Data import and manipulation


```r
# Example: Read data from a CSV file
your_data <- read.csv("path/to/your/data.csv")
```

Part 3: Data Analysis and Visualization

In R we commonly use `<-` to set a variable to a value. R uses `vector` calculation, which avoids use of loops in more traditional programming. For instance, below we set `x` equal to a series of values (a vector), and then calculate a series of values of `y`.

```r
#  A comment lineR 

x <- 5.0    #  Set x equal to 5.0

y <- x^2    # y is equal to x squared. 

x <- c(1.0, 2.0, 3.0)   #   x is equal to a numbered list of values - a “vector” 

x <- seq(1,2,0.2)       # create an incremented sequence

xx <-matrix(c(2,4,6,8),2,2)   # a matrix row 1 = 2 6 row 2 = 4 8
#  length(x) returns the length of the vector x.
#  x returns all the values of x

length(x)    # the number of values in the vector x
```

Once we have a series of x and y, of equal length, we can easily create a graph.

```r
x   <-  seq(0,10,0.5)     # a sequence from 1 to 10, increments 0f 0.5

y  <-   x^2     #  Note that y is calculated for every x. This is called vectorized.

plot(x,y)     # Create a plot. We can add a lot of formatting!

```
More formatting

```r
plot(x,y,type = "b",main = "A Formatted Graph",col = "darkblue", xlab = "X Label", ylab = "Y Label")
```

### Read Data files

 If you upload a csv file into your working directory, they can be read into Dataframes. Dataframes are columns of values that do not have to be of the same type (Names, dates, income, etc), and they are very important in many R applications. However, here’ we are focusing on vectors, and we can convert a dataframe with two or more numeric columns (such as volume and pH) into respective vectors. The data file `mydat.csv` looks like :

`volume, pH 1.01, 2.2 2.03, 2.4 3.20, 2.6`

```r
MyData <- read.csv("mydat.csv") # a file with headers vol and pH 
## Warning in read.table(file = file, header = header, sep = sep, quote = quote, :
## incomplete final line found by readTableHeader on 'mydat.csv'
MyData      #  it's a dataframe
##    vol  pH
## 1 1.01 2.2
## 2 2.03 2.4
## 3 3.20 2.6
volume <- MyData$vol  # extract column vol as vector

pH <- MyData$pH       # extract column pH as vector 

volume 

## [1] 1.01 2.03 3.20

pH

## [1] 2.2 2.4 2.6
```

### Descriptive Statistics

```r
# Summary statistics
summary(MyData)

# Mean, median, standard deviation
mean(MyData$Column1)
median(MyData$Column2)
sd(MyData$Column1)
```







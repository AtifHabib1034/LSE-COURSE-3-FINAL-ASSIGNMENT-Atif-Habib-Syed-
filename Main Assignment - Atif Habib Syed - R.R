
# Week-4 Assignment: Visualize Data to gather insights

# The whole tidyverse library.
library(tidyverse)
# Import and read CSV file.
library(readr)
# Data wrangling.
library(dplyr)
# Data wrangling.
library(tidyr)
# Create statistical summaries.
library(skimr)
# Create a report as an HTML file.
library(DataExplorer)

#**********************************************************************#

# Importing Turtle Sales data through CSV
turtle_sales <- read.csv(file.choose(), header=TRUE)

# Viewing Data
head(turtle_sales)
tail(turtle_sales)

# View the data set in a new window in RStudio as an Excel-style sheet.
View(turtle_sales)

# View the dimensions of the data set i.e. the number of rows and columns.
dim(turtle_sales) # Rows: 352, Columns: 9

# View the titles or names of the columns in the data set.
# Using function 'colnames', 'names'
colnames(turtle_sales)
names(turtle_sales)

# Determine the structure of the data set.
# You can use three different functions.
str(turtle_sales)
glimpse(turtle_sales)
as_tibble(turtle_sales)

# Removing unnecessary columns
turtle_sales_filtered <- select(turtle_sales, -Ranking, -Year, -Genre, -Publisher)


# Summary of turtle_sales_filtered
summary(turtle_sales_filtered)


# Creating Plots
# Scatter Plot

qplot(Platform, NA_Sales, data=turtle_sales_filtered)
# Checking which product performed above GBP 15mil
filter(turtle_sales_filtered, NA_Sales > 15)


qplot(Platform, EU_Sales, data=turtle_sales_filtered)

filter(turtle_sales_filtered, EU_Sales > 15)

qplot(Platform, Global_Sales, data=turtle_sales_filtered)

filter(turtle_sales_filtered, Global_Sales > 15)

#Histograms
qplot(NA_Sales, data=turtle_sales_filtered)

qplot(EU_Sales, data=turtle_sales_filtered)

qplot(Global_Sales, bins=30, data=turtle_sales_filtered)


# boxplots

qplot(Platform, NA_Sales, data=turtle_sales_filtered, geom='boxplot')
qplot(Platform, EU_Sales, data=turtle_sales_filtered, geom='boxplot')
qplot(Platform, Global_Sales, data=turtle_sales_filtered, geom='boxplot')

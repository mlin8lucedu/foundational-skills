# Lab 1 Badge Code

# Type your name here: Meiko Lin


################
## Problem 1 ###
################

# Create a data frame that includes two columns, one named "Students" and the other named "Foods". The first column should be this vector (note the intentional repeated values): Thor, Rogue, Electra, Electra, Wolverine

#The second column should be this vector: Bread, Orange, Chocolate, Carrots, Milk


#### Write your code below:
#### STEP 1:  Create Students and Foods vectors
Students <- c("Thor", "Rogue", "Electra", "Electra", "Wolverine")
Foods <- c("Bread", "Orange", "Chocolate", "Carrots", "Milk")
Students
Foods
#### STEP 2:  Create data frame
badge_data <- data.frame(Students, Foods)
badge_data #Data frame print out
as_tibble(badge_data) #Tibble print out



################
## Problem 2 ###
################

# Using the data frame created in Problem 2, use the table() command to create a frequency table for the column called "Students".

#Call Package vctr using library
library(vctrs)

table(Students)
table(Foods)

################
## Problem 3 ###
################

#Create a vector of five numbers of your choice between 0 and 10, save that vector to an object, and use the sum() function to calculate the sum of the numbers.


#### Write your code below:
sum(vec1 <- c(1, 2, 3, 5, 6, 9))


################
## Problem 4 ###
################

# a. Create code to read the data/sci-online-classes.csv file into R using function(s) from the tidyverse. (Note: this package loads with library(tidyverse). Save the data as an object called sci_classes.

# c. Examine the contents of sci_classes in your console.Is your object a tibble? How do you know? (Hint: Check the output in the console.) 
R will print only the first ten rows of a tibble. R also adds useful summary information about the tibble, such as the data types of each column and the size of the data set.

#### Write your code below:
library(tidyverse)
sci_classes <- read_csv("/Users/Meiko/Documents/GitHub/foundational-skills/foundation_lab_1/data/sci-online-classes.csv")
sci_classes




################
## Problem 5 ###
###############

# a. Select all columns except subject and section. 

# b. Assign to a new object with a different name. 

# c. Examine your data frame.



#### Write your code below:

sci_classes |> select(!c(subject, section))
clean_sci_classes <- sci_classes |> select(!c(subject, section))
view(clean_sci_classes)

##################
#### Great job!###
##################
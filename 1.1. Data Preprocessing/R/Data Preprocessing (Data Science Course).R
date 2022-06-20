# Data Preprocessing 

# Importing the Dataset
dataset = read.csv('data.csv')

# Taking care of the missing values
dataset$Age = ifelse(is.na(dataset$Age), 
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)
# is.nap(dataset$age) returns if true/false output to "if there is any value in the dataset missing or not"

dataset$Salary = ifelse(is.na(dataset$Salary), 
                     ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Salary)

# Encoding categorical data 
dataset$Country = factor(dataset$Country,
                         levels = c('France', 'Spain', 'Germany'),
                         labels = c(1, 2, 3))

dataset$Purchased = factor(dataset$Purchased,
                         levels = c('No', 'Yes'),
                         labels = c(0,1))


# install.packages('caTools')
library(caTools)

set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.8)
# In python we specify the X and y variables but in R we just specify the y varible which is Purchased
# In python we enter the ratio for the test set, and in R, we enter the ratio
# for the training set
#
# > split
# [1]  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE

training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# > training_set
# Country      Age   Salary Purchased
# 1        1 44.00000 72000.00         0
# 2        2 27.00000 48000.00         1
# 4        2 38.00000 61000.00         0
# 5        3 40.00000 63777.78         1
# 7        2 38.77778 52000.00         0
# 8        1 48.00000 79000.00         1
# 9        3 50.00000 83000.00         0
# 10       1 37.00000 67000.00         1


# Feature Scaling 
training_set[, 2:3] = scale(training_set[, 2:3])
test_set[, 2:3] = scale(test_set[, 2:3])

# Since Country and Purchased are Test sets, we need to convert then into numeric
# or we apply scaling only to those columns we want, which in this case exclude Country and Purchased 

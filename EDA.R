# Data Preprocessing

# Importing the dataset
dataset = read.csv('Data.csv')
print(dataset)

#Taking care of data (Mean)
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age,FUN = function(x) mean(x, na.rm = TRUE)),dataset$Age)

dataset$Salary = ifelse(is.na(dataset$Salary),
                     ave(dataset$Salary,FUN = function(x) mean(x, na.rm = TRUE)),dataset$Salary)

#Taking care of data (Median)
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age,FUN = function(x) median(x, na.rm = TRUE)),dataset$Age)

dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary,FUN = function(x) median(x, na.rm = TRUE)),dataset$Salary)

#Taking care of data (Mode)
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age,FUN = function(x) mode(x, na.rm = TRUE)),dataset$Age)

dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary,FUN = function(x) mode(x, na.rm = TRUE)),dataset$Salary)

#endoding categorical data
dataset$Country = factor(dataset$Country,
                         levels = c('France', 'Spain', 'Germany'),
                         labels = c(1, 2, 3))
dataset$Purchased = factor(dataset$Purchased,
                           levels = c('No', 'Yes'),
                           labels = c(0, 1))

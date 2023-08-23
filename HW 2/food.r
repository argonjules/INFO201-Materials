#Your Name
#youremail@uw.edu
#Collaboration statement goes here

#all library statements must be at the top of the page!
library(dplyr)
library(stringr)
library(testthat)

# Overview ---------------------------------------------------------------------

# Homework 2: Food Desert Analysis
# Before you begin, make sure you read and understand the assignment description
# on canvas first! This assignment will not make sense otherwise. 
# For each question/prompt, write the necessary code to calculate the answer.
# For grading, it's important that you store your answers in the variable names
# listed with each question in `backtics`. Make sure you DO NOT hardcode values
# unless specified to do so in the instructions! 

# Loads in your datasets
df_1 <- read.csv("food_access.csv") #DO NOT CHANGE!
df_2 <- read.csv("CountyCodes.csv") #DO NOT CHANGE!

# this code makes copies of your datasets. MAKE SURE YOU USE THE COPIES NOT 
# THE ORIGINAL DATASET VARIABLE NAMES - i.e. you should never in your code use 
# the variables `df_1` or `df_2`. 
food_df <- df_1
county_df <- df_2


# Data Joining -----------------------------------------------------------------
#
# In this homework assignment, you will be working with two related datasets. 
# So, one of your first tasks is to properly join the two datasets into one!
#
# ------------------------------------------------------------------------------

# Let's first start by creating one unified dataset by joining the two dataframes.
# We need to join based on the names of the counties. The problem is that there 
# are multiple counties with the same name but are in located in different states. 
# Ex: Greene County, Alabama and Greene County, Virginia. So you'll need to join
# based on both county name and state name! 
#
# The next problem is that the food_df dataset uses the full name of the state 
# where as county_df uses the two letter state abbreviations. Joins require exact
# string matches in order to work. So, the first thing you need to do is create
# and populate a state abbreviation column called `state_code` to food_df that 
# stores the two letter state abbreviation for each state in the dataset. 
#
# HINT - Base R has two built in objects called state.abb and state.name that 
# stores the two letter state abbreviation and full state names respectively.



# Now we can do a join! Do a left join on the food_df with the county_df and store
# the combined dataframe into a variable `df`



# Data Cleaning & Wrangling ----------------------------------------------------
#
# Now that we have a joined dataset, one of your first tasks is to clean and 
# wrangle the two datasets you are going to work with! 
#
# ------------------------------------------------------------------------------

# The first thing you should do with any new dataset is to check how "clean" the
# dataset is (i.e. see if there are any missing values)
#
# In the unified df, check if there are any Counties that don't have a state value.
# If there are, store those County names as a vector in a variable called `missing_state`
# If there are none, set `missing_state` to an empty character vector. 


# In the unified df, check if there are any Counties that are missing a
# metro.nonmetro.status. If there are, store those County names as a character 
# vector in a variable called `missing_metro_status`. If there are none, set 
# `missing_metro_status` to an empty character vector. 


# Because we will need the metro status for later calculations, lets fill in some
# of the missing values. For any counties that are missing a metro status, assign
# that county as 1 (i.e. Urban) if that counties population is greater than 500,000.
# Otherwise, assign the county's metro.nonmetro status as 0 (i.e Rural).



# County Level Analysis --------------------------------------------------------
#
# Let's gather some key summary statistics about food deserts at the county level.
#
# ------------------------------------------------------------------------------

# In your cleaned & joined df, How many counties are Rural? Store your answer in 
# a variable called `rural`


# In your cleaned & joined df, How many counties are Urban? Store your answer in 
# a variable called `urban` 


# What percent of counties are rural? Round to the nearest whole number and store
# your answer in a variable called `rural_per`


# What percent of counties are urban? Round to the nearest whole number and store
# your answer in a variable called `urban_per`


# Gut check -- do your percents add up to 100%? You many want to add a line in 
# your food_test file to check if your percents add up to 100% ! 



# For rural counties, what is the most common Economic Type? Store the string 
# label (not the numeric code) in a variable called `econ_type_rural`


# For urban counties, what is the most common Economic Type? Store the string 
# label (not the numeric code) in a variable called `econ_type_urban`


# Fill out the following function called `is_food_desert` that 
# given a county and a state name as a string returns TRUE if county is a food 
# desert and FALSE otherwise. Check the assignment description 
# NOTE: Read the assignment instructions on canvas to see how to determine if a 
# county is a food desert or not. 
# NOTE2: Your function should not error if given county name "District of Columbia"

is_food_desert <- function(county, state){
    #return()
}

# Using the `is_food_desert` function, add and populate a new column in your df 
# called `food_desert` that stores TRUE if that county is a food desert and 
# FALSE if that county is not a food desert. 


# How many counties in the dataset are food deserts? Store your answer in a
# variable called `fd_desert`.


# What percentage of counties are food deserts? Round you answer to the nearest
# whole number and store in a variable called `fd_desert_per`


# What percentage of rural counties are food deserts? Round you answer to the nearest
# whole number and store in a variable called `per_rural_fd`.


# What percentage of urban counties are food deserts? Round you answer to the nearest
# whole number and store in a variable called `per_urban_fd`.


# What is the relative risk of urban counties versus rural counties. To get relative
# risk, use the percent difference formula. Make sure you use the correct formula for this! Check class 
# notes for more details on how to get percent difference! Store your answer in
# a variable called `rel_risk`. 


# Once complete, you should uncomment this line in order to see your results!
# print(paste0("Urban counties are ", round(rel_risk), " times more likely than Rural counties to be a food desert"))


# For counties that are food deserts, what is the most common Economic type? Store
# the string label (not the numeric code) in a variable called `econ_type_fd`


# For counties that are NOT food deserts, what is the most common Economic type? Store
# the string label (not the numeric code) in a variable called `econ_type_nonfd`



# Federal Level Analysis --------------------------------------------------------
#
# Let's gather some key summary statistics about food deserts at the federal level.
#
# ------------------------------------------------------------------------------

# How many total people live in food deserts? Store your answer in a variable 
# named `total_fd_pop`


# What percent of the US total population live in food deserts? Round your answer
# to the nearest whole number are store in a variable named `total_fd_per`


# How many Children in total live in food deserts? Store your answer in a variable 
# named `child_fd_pop`


# What percent of people living in food deserts are children? Round to the
# nearest whole number and store in a variable called `child_fd_per`


# How many people who are low income live in food deserts? Store your answer in 
# a variable named `LI_fd_pop`


# What percentage of the overall US total population live are low income AND live
# in food deserts? Round to the nearest whole number and store in a variable 
# called `LI_fd_per`


# State Level Analysis --------------------------------------------------------
#
# Let's gather some key summary statistics about food deserts at the state level
# to compare regional differences!
#
# ------------------------------------------------------------------------------


# Create a new dataframe called `state_df` that stores the following information 
# at the state level (i.e For each state in the dataframe, add the following 
# column information): 
# state - which stores the full string name of the state (i.e use Washington not WA)
# population - which stores the total population of that state 
# food_desert_pop - which stores the total number of people living in a food desert
#                 in that state. 
# fd_per_capita - which stores the per capita rate of people living in a food desert
#                 in that state. Per capita is relative to the state population, not
#                 the federal level population
# low_income_pop - which stores the total number of people classified as low income
#                 who live in a food desert in that state
# children_pop - which stores the total number of children who live in a food desert
#                 in that state 
#
# Hint - it may help to write helper functions that return vectors for this task!



# Store the names of the top five states with the largest food desert per capita
# rate in order in a vector called `top_5_fd_per_capita`



# Now lets examine one regional difference. Let's compare Northeast states (Northeast
# as a region is defined in the census as Connecticut, Maine, Massachusetts, 
# New Hampshire, New Jersey, New York, Pennsylvania, Rhode Island, and Vermont)
# to the rest of the US. What is the average food desert per capita rate of 
# Northeastern states? Store your answer in a variable called `NE_avg_fd`.


# What is the average average food desert per capita rate of all non-northeastern
# states? Store your answer in a variable called `non_NE_avg_fd`


#To run the test file, uncomment the line below before running source. 
#test_file("food_test.r")

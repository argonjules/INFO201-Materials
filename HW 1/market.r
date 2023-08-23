#Your Name
#youremail@uw.edu
#I worked on this assignment alone using only this quarter's course materials

library(stringr) #loads in the stringr library, all library statements must be at the top of the page! 
library(testthat) #loads in the testthat library 

# Overview ---------------------------------------------------------------------

# Homework 1: Video Game Market Analysis
# Before you begin, make sure you read the assignment description on canvas first!
# For each question/prompt, write the necessary code to calculate the answer.
# For grading, it's important that you store your answers in the variable names
# listed with each question in `backtics`. Make sure you DO NOT hardcode values
# unless specified to do so in the instructions! 

df <- read.csv("2013_Video_Games_Dataset.csv") #loads in your dataset DO NOT CHANGE!

# Background Math --------------------------------------------------------------
#
# In this section, you will be calculating some general numbers about this dataset
# that you'll need later as reference values!
#
# ------------------------------------------------------------------------------

# How many games in total are in this dataset? Store this value into a variable called `total_games`


# How many games in this dataset are sequels? Store this value into a variable called `total_seq`


# What percentage of games in the dataset are sequels? Round this number up to the nearest whole number/integer 
# and store into a variable called `perc_seq`


# How many games in this dataset were published by an AAA studio? Store this value into a variable called `total_AAA_games`
# AAA in this case means the publisher was either Activision, Nintendo, Rockstar, Sony, Disney, Electronic Arts, or Microsoft.
# Make sure you don't double count games who are produced by multiple AAA publishers
# i.e if a game is produced by both Microsoft and Nintendo you should only count that game once!


# What percentage of games where published by an AAA studio? Round this number up to the nearest whole number
# and store into a variable called `perc_AAA`


# How many games in this dataset were published by a company that also made the same console hardware 
# many of the videogames are played on? i.e how many of these games are published by Nintendo, Microsoft, or Sony? 
# Store this value into a variable called `total_hardware_games`


# What percentage of games where published by a company that also makes the console hardware? Round this number up to the nearest whole number
# and store into a variable called `perc_hardware`


# Examining Trends Over Time ---------------------------------------------------
#
# In this section, you will be examining trends over time in the dataset! You'll
# write code to see how the video game release cycle differed between years to help
# tell the story about how video game release schedules are impacted by the 
# release of certain gaming consoles. 
#
# ------------------------------------------------------------------------------

# Fill in the function below called `num_games_per_yr` that takes in a numeric parameter `year`
# and returns the number of video games produced that year. 

num_games_per_yr <- function(year){
  #code goes here
}

# Using your `num_games_per_yr` function, find out how many games were produced in 2004.
# Store this value in a variable called `games_2004`


# Using your `num_games_per_yr` function, create a vector called `games_per_yr` 
# that stores the number of games released each year in the dataset in order. 
# This means that your vector at index 1 should store the number of games released in 2004
# and at index 2 should store the number of games released in 2005, and so on. 


# Now create a vector called `diff_per_yr` that stores the the differences between 
# the number of games released each year. For example, this vector at index 1 should 
# store the difference between games released in 2005 versus 2004; at index 2 should
# store the difference between games released in 2006 versus 2005. 
# Note: This vector should have a different length than your earlier `games_per_yr` vector. 



# Now create a vector called `perc_per_yr` that stores the the PERCENTAGE difference/change
# between the number of games released each year. For example, this vector at index 1 should 
# store the percentage difference between games released in 2005 versus 2004.
# You do not need to round these values. 
# Note: This vector should have the SAME length as the `diff_per_yr` vector. 
# HINT -- use the two vectors you created earlier, just keep in mind that your 
# two vectors are different lengths so you may want to "slice" one of your vectors. 



# Examining Sales and Market Share ---------------------------------------------
#
# In this section, you will be analyzing trends in the video game market. Your
# analysis will help tell a story about how the "rich get richer" phenomena is 
# present in the video game industry as part of a larger story around 
# "What makes a blockbuster video game?". 
#
# ------------------------------------------------------------------------------

# What was the title best selling game in the entire dataset? Store this value into a variable called `best_seller`


# What were the titles of worst selling games in the entire dataset? Store this value into a variable called `worst_seller`
# Keep in mind you may have ties for worst selling. 



# Fill in the function below called `best_per_yr` that takes in a numeric parameter `year`
# and returns the title of the best selling video games released that year. 
# Your function should return a string/character datatype! 
# We will use this function later in the assignment.
best_per_yr <- function(year){
  #code goes here
}

# Now let's examine the distribution of game sales across the dataset. To do this,  
# get mean and the median sales value. Store these two values respectively into 
# variables named `mean_sale` and `median_sale`.


# Now calculate the difference between the mean and median sale values, then store
# this value into a variable named `diff_mean_med`


# Examine difference between the mean and median. If you were telling someone 
# about the average video game sale in this dataset, would you use the mean or median value? 
# Store your answer (either "mean" or "median") as a string into a variable 
# named `mean_or_median`. Be sure to spell correctly! 
# this is the only variable in this assignment that should be hardcoded!!


# How many games in this dataset sold above and beyond the average amount? 
# to calculate "above and beyond", find all the games whose sales are greater than 
# 2 standard deviations above the mean (i.e mean + 2 * standard Deviation) 
# Store this value into a variable named `above_avg` 


# Of those games that sold about and beyond the average amount, what percent were produced by an AAA publisher? 
# Reminder that AAA in this case means Activision, Nintendo, Rockstar, Sony, Disney, Electronic Arts, or Microsoft
# Round your answer to the nearest whole number and store it in a variable named `above_avg_per`


# Of those games that sold about and beyond the average amount, what percent were published 
# by companies that also make the same console hardware many of the videogames are played on?
# i.e what percent of these games are published by Nintendo, Microsoft, or Sony
# Round your answer to the nearest whole number and store it in a variable named `above_avg_hardware_per`


# Diving in with One Video Game ------------------------------------------------
#
# In this section, you will be analyzing the performance of one video game as an
# example of some of the downsides to markets that follow the Pareto distribution. 
# This part is also to help show how your analysis can serve even very specific 
# stories!
#
# ------------------------------------------------------------------------------

# How much did the game titled "Fire Emblem: Radiant Dawn" make? Store this in a
# variable called `fe_sold`


# What was the average revenue of games released on the same console?
# Store this in a variable called `avg_console_sale`.
# Hint -- you should use indexing to figure out which console to pick! 


# What was the average revenue of games released by the same Publisher?
# Store this in a variable called `avg_publisher_sale`.
# Hint -- you should use indexing to figure out which publisher to pick! 


# What was the average revenue of games released in the same year?
# Store this in a variable called `avg_yr_sale`.
# Hint -- you should use indexing to figure out which publisher to pick! 


# What was the average revenue of games released under the same genre of "strategy" ?
# Store this in a variable called `avg_strategy_sale`.


# Compared to the average amounts of similar games, how much better/worse did that
# game do? Store the differences between how much the sales of "Fire Emblem: Radiant Dawn" 
# were compared to `avg_console_sale`, `avg_publisher_sale`, `avg_yr_sale`, and 
# `avg_strategy_sale` into the following four variables: `fe_console_diff`, 
# `fe_publisher_diff`, `fe_yr_diff`, and `fe_strategy_diff`. 


#To run the test file, uncomment the line below before running source. 
#test_file("market_test.r")

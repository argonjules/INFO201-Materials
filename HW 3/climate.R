#Your Name
#youremail@uw.edu
#Collaboration statement goes here

#all library statements must be at the top of the page!
library(dplyr)
library(stringr)
library(ggplot2)

# Overview ---------------------------------------------------------------------

# Homework 3: Climate Change Analysis
# Before you begin, make sure you read and understand the assignment description
# on canvas first! This assignment will not make sense otherwise. 
# For each question/prompt, write the necessary code to calculate the answer.
# For grading, it's important that you store your answers in the variable names
# listed with each question in `backtics`. Make sure you DO NOT hardcode values
# unless specified to do so in the instructions! 
# BEFORE YOU SUBMIT YOUR ASSIGNMENT, MAKE SURE YOU COMMENT OUT ANY PLOT() STATEMENTS

# Loads in your datasets
country_df <- read.csv("country_data.csv") #DO NOT CHANGE!
geo_df <- read.csv("geographies.csv") #DO NOT CHANGE!

# Data Wrangling and Cleaning  -------------------------------------------------
#
# Like with the last homework, this assignment asks you to work with two related
# datasets. Before you can visualize any patterns in the dataset, you'll first 
# need to properly join the two datasets into one.
#
# ------------------------------------------------------------------------------

# First, merge your two dataframes using a left join on the geo_df with the 
# country_df and store the combined dataframe into a variable `df`. You need to 
# join based on the names of the countries. 


# Let's clean-up some potential data problems in your merged `df`. One problem 
# you may have noticed in this dataset is that the datatype for the Population 
# column is "character" (also known as a "String datatype"). Before we can 
# visualize the data, you'll need to convert the Population column to a numeric 
# type and store this new value into a column in your `df` called `pop_fix`.
# HINT 1 - First figure out how to remove the "M" or "k" character from population 
# values, then figure out how to transform the values into numbers, and then 
# multiply each value by the correct amount. You need to keep track of the units! 
# populations with the M character need to be multiplied by 1000000 and k need 
# to be multiplied by 1000. 
# HINT 2 - The as.numeric function in R can help you transform strings into numbers! 


# Examining Trends in Carbon Footprint  ----------------------------------------
#
# In this section, you'll be examining trends in cabon footprint across different
# parts of the world. Before you begin this section, make sure you understand 
# how to use the "group_by" and "summarize" methods!
#
# ------------------------------------------------------------------------------

# Create a new dataframe `yr_region_df` that stores the MEAN carbon footperint 
# per capita PER EACH YEAR across each of the eight regions in the world. Note, 
# this question is asking you to create an aggregated view of your dataset based 
# on year and the eight regions. The aggregated dataframe  (i.e. region_df) should have three coloumns: 
# Year, eight_regions, and avg_carbon


# Once you have created your `yr_region_df`, remove any rows from this dataframe
# that contain data from any year before 1979 and/or have an NA value for one of
# the eight regions. Your `yr_region_df` after this step should now have only 328 rows.


# Create a variable called `carbon_em_lineplot` that stores a ggplot lineplot 
# showing the average carbon emissions overtime per each of the eight regions. 
# You should use the `region_df` you created in the two steps earlier. 
# The lineplot should have the following characteristics: 
#   x axis & Label: Year  
#   y axis & Label: Average Carbon Footprint per Capita  
#   line color should be determined based on which of the eight regions the 
#     country belongs to.
#   Legend: Eight Regions
# Your plot must have proper axes labels and must have proper legend labels! 
# Do not use default labels! 



# Now let's examine the distribution of Carbon Footprint Per Capita across each 
# of the eight world regions. Create a variable called `carb_em_region` that
# stores a ggplot violinplot showing the distribution of carbon emissions per each
# of the eight regions (NOTE: You should NOT use the `yr_region_df` to answer 
# this question).  
# The violinplot should have the following characteristics: 
#   x axis & label: Eight Regions 
#   y axis & label: Carbon Footprint per Capita  
#   fill color should be determined based on which of the eight regions the 
#   country belongs to 
# Your plot must have proper axes labels and must have proper legend labels! 
# Do not use default labels! 



# Digging into Carbon Footprint Inequalities -----------------------------------
#
# In this section, you now be digging further into the inequalities in carbon 
# footprint across different parts of the world. 
#
# ------------------------------------------------------------------------------

# let's examine the distribution of Carbon Footprint Per Capita across each 
# of the four income groups. Create a variable called `carb_em_inc` that
# stores a ggplot violinplot that has the following characteristics: 
#   x axis & label: World Bank Income Group 
#   y axis & label: Carbon Footprint per Capita  
#   fill color should be determined based on which of the four income groups 
#     the country belongs to 
# Your plot must have proper axes labels and must have proper legend labels! 
# Do not use default labels! 


# Create a new dataframe `high_inc` that stores the MEAN carbon footprint 
# per capita for each of the "High Income" countries. Note, this question is asking you to 
# create an aggregated view of your dataset per each country. 
# The aggregated dataframe  (i.e. high_inc) should have atleast two columns:
# name, avg_carb



# Finally, remove any rows from your `high_inc` where the avg_carb value is NaN or NA.
# your `high_inc` dataframe should now only have 55 countries. 



# Create a variable called `high_inc_barplot` that stores a ggplot barplot 
# showing the average carbon emissions per each country for only the high income
# countries. You should use the `high_inc` dataframe you created earlier. 
# The barplot should have the following characteristics: 
#   x axis & Label: Mean Carbon footprint per Capita 
#   y axis & Label: Country Name
#   Title: "Avg. Carbon footprint per Capita for High Income Countries"
#   Caption: "Avg. Carbon footprint per capita between the years 1979 and 2019 for 
#     countries categorized as High Income by the World Bank" 
#   Flipped Coordinates (i.e make a horizontal barchart not a vertical bar chart)
#   hline: Add a blue line to the chart indicating the mean value. 
#   Bars should be ordered from largest mean carbon footprint to smallest 
#     (i.e. Qatar should be on top and Chile last) 
# Your plot must have proper axes labels and must have proper legend labels! 
# Do not use default labels! 




# Create a dataframe called `per_country_df` that stores the MEAN carbon footprint 
# per capita and the MEAN of the median household income for each country in the dataset. 
# Note, this question is asking you to create an aggregated view of your dataset 
# per each country (and yes, you will be taking the mean of a column that stores
# a median value). Your aggregated dataframe (i.e. per_country_df) should 
# have atleast 3 columns: name, avg_carb, avg_household_inc



# We will also eventually need information on the income group for each country. 
# To add this information to your `per_country_df` dataframe, you'll want to 
# merge/join your `per_country_df` with the earlier `geo_df`. Store your merged 
# results into the variable `per_country_df`. 



# Now using your `per_country_df`, lets examine the relationship between 
# MEAN carbon foootprint per capita and the MEAN median household income for 
# each country in the dataset. We will also want to examine how this relationship
# is impacted by the income groups of each country. To do this, create a variable 
# called `carb_inc_scatter` that stores a ggplot scatterplot showing the average 
# carbon footprint vs the average household per each country. 
# The scatterplot should have the following characteristics: 
#   x axis & Label: Mean Carbon footprint per Capita 
#   y axis & Label: Avg. Median Household Income (USD $)
#   Title: "Avg. Carbon footprint per Capita vs Avg. Median Household Income"
#   Caption: "Avg. Carbon footprint per capita versus avg. median household income 
#     from the years 1979 and 2019 for each country. Countries are categorized 
#     using the World Bank's income groups." 
# Your plot must have proper axes labels and must have proper legend labels! 
# Do not use default labels! 




# Examining Median Household Income --------------------------------------------
#
# In this section, you now create a function to help provide context for some of
# your earlier plots. This function will help you Examine median household 
# income versus life expectancy overtime. 
#
# ------------------------------------------------------------------------------

# Fill out the following function called `le_vs_mhinc_plot` that given a numeric 
# year, returns a scatterplot. The scatterplot your function creates should have 
# the following characteristics: 
#   x axis & Label: Life Expectancy in years 
#   y axis: Median Income per Household 
#   circle size should be proportional to each country's population
#   circle color should be determined based on which of the four regions the 
#     country belongs to 
#   Title of the plot should read "Life Expectancy VS Median Household Income 
#     in <YR>" where <YR> is the year specified by the user. 
# your plot must have proper axes labels and must have proper legend labels! 
# Do not use default labels! 

le_vs_mhinc_plot <- function(yr){
  
  #return()
}


# When you are complete with you code, add your variables to the report.Rmd file
# and follow the instructions to generate your report. 
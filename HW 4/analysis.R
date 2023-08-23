#Your Name
#youremail@uw.edu
#Collaboration statement goes here

library(dplyr)
library(stringr)
library(shiny)

# Overview ---------------------------------------------------------------------

# Homework 4: Examining Fight Song Lyrics - Analysis
# Before you begin, make sure you read and understand the assignment description
# on canvas first! This assignment will not make sense otherwise. 
# For each question/prompt, write the necessary code to calculate the answer. You
# will use the code you create here to inside your shiny app to make an interactive
# view of your analysis. For grading, it's important that you store your answers 
# in the variable names listed with each question in `backtics`. Make sure you 
# DO NOT hardcode values unless specified to do so in the instructions! 

# Loads in your datasets
songs_df <- read.csv("fight_songs.csv") #DO NOT CHANGE!


# Word Counts  -----------------------------------------------------------------
#
# In this section, you will be counting how often certain phrases appear in the 
# lyrics for the songs in the dataset. Make sure you are familiar with the stringr
# library before beginning this section.  
#
# ------------------------------------------------------------------------------

# How many songs in the dataset contain the word 'fight'? Keep in mind that 
# sometimes 'fight' is capitalized! Store your answer in a variable named `fight_count`


# How many times in total does the word fight appear across all the songs? Store
# your answer in a variable named `total_fight`? Note that there is one instance
# where the word "fight" is spelled as "Fi-i-i-ight". 


# How many songs in the dataset contain references to men (i.e. contains words 
# such as "man", "boy", "or "son")? Keep in mind that sometimes these words are 
# capitalized and are sometimes plural/possessive case (ex: boys or man's)! 
# Store your answer in a variable named `male_count`.


# How many songs in the dataset contain references to on the other hand to women?
# (i.e. contains words such as "woman", "girl", "or "daughter")? Keep in mind that 
# sometimes these words are capitalized and are sometimes plural/possessive case! 
# Store your answer in a variable named `female_count`


# How many times in total does the word 'rah' appear across all the songs? Store
# your answer in a variable named `rah_count`. Keep in mind that 
# sometimes words are capitalized! 


# How many times in total do the lyrics reference win or victory (i.e. how often 
# do the words 'win', 'won', or 'victory' appear across all the songs)? Store
# your answer in a variable named `win_count`. Keep in mind that 
# sometimes words are capitalized! 


# Creating Helper Functions  ---------------------------------------------------
#
# In this section, you will be creating a set of fucntions that you will use to 
# help layout your shiny app. Make sure you read the instrucitons closely and that
# you test all of the functions BEFORE you add them to your shiny app. 
#
# ------------------------------------------------------------------------------

# Write a function that given a school name as a string and a dataframe containing 
# the dataset, returns the lyrics for the song as an HTML string. Because we 
# will want to eventually display the lyrics as html in our shiny app, we need 
# to also format the lyrics so that line breaks appear correctly. To do this, 
# you need to replace all instances of "\n\n" in the lyrics with "<br/>" before 
# you return the lyrics. Use the HMTL() function from shiny to convert your 
# string to an HTML element. 

get_lyrics <- function(df, school_name){
  

}


# Write a function that given a school name as a string and a dataframe containing 
# the dataset, returns an h3 HTML element containing the name of the song. 
# HINT - first get the name of the song as a string, then pass that song name 
# into the h3() function from Shiny. Don't forget to return the end result!

get_song_name <- function(df, school_name){
  
}

# Write a function that given a school name as a string and a dataframe containing
# the dataset, returns an h4 HTML element containing both the composer and the 
# year the song was written formatting like this: "Written by <composer> in <year>. 
# Like with the function above, you should first figure out how to get the string 
# formatted correctly, then pass that string into the h4() function. 
# Don't forget to return the end result! 

get_info <- function(df, school_name){
  
}

# Write a function that given a word as a string and a df, returns a dataframe containing
# only the rows for songs that contain that word in the lyrics. For example, if 
# the word was "Bama", you should return 1 row containing all the columns for 
# the University of Alamaba since only that university's song lyrics contain 
# the word "Bama". 
# If the word provided is an empty string (i.e. ""), return the entire dataframe.
# Do not filter the coloumns down!

get_relevant_songs <- function(word){
  
}



# The following function is provided for you -- do not change the code below. 
# This will only work once you have written all the functions above. This function
# takes in a dataframe an creates a 3 column text layout. You will use this as
# part of your Shiny app. 

make_cols <- function(filt_df){
  col1 <- ""
  col2 <- ""
  col3 <- ""
  for (i in 1:nrow(filt_df)){
    #print(fight_songs[i,])
    col_num <- i %% 3
    if (col_num == 1){
      name <- h3(filt_df[i, ]$school)
      lyrics <- HTML(str_replace_all(filt_df[i, ]$lyrics, "\n\n", "<br/>"))
      block <- paste(name, lyrics, br())
      col1 <- paste(col1, block)
    } else if (col_num == 2){
      name <- h3(filt_df[i, ]$school)
      lyrics <- HTML(str_replace_all(filt_df[i, ]$lyrics, "\n\n", "<br/>"))
      block <- paste(name, lyrics, br())
      col2 <- paste(col2, block)
    } else{
      name <- h3(filt_df[i, ]$school)
      lyrics <- HTML(str_replace_all(filt_df[i, ]$lyrics, "\n\n", "<br/>"))
      block <- paste(name, lyrics, br())
      col3 <- paste(col3, block)
    }
    
  }
  text <- fluidRow(
    column(3,
           HTML(col1)
    ),
    column(4, offset = 1,
           HTML(col2)
    ),
    column(4,
           HTML(col3)
    )
  )
  return(text)
}
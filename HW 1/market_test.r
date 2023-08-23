# This file contains part of my auto-grader. You can use this test file to check 
# to make sure that your code is running as expected. You do not need to modify 
# this file. 

test_that("Check if all variables exist - Part 1", {
  
  expect_equal( exists("total_games"), TRUE)
  expect_equal( exists("total_seq"), TRUE) 
  expect_equal( exists("perc_seq"), TRUE)
  expect_equal( exists("total_AAA_games"), TRUE) 
  expect_equal( exists("perc_AAA"), TRUE)
  expect_equal( exists("total_hardware_games"), TRUE)
  expect_equal( exists("perc_hardware"), TRUE)
  
})

test_that("Check if all variables exist - Part 2", {
  
  expect_equal( exists("num_games_per_yr"), TRUE)
  expect_equal( exists("games_2004"), TRUE) 
  expect_equal( exists("perc_seq"), TRUE)
  expect_equal( exists("games_per_yr"), TRUE) 
  expect_equal( exists("diff_per_yr"), TRUE)
  expect_equal( exists("perc_per_yr"), TRUE)
  
})

test_that("Check if all variables exist - Part 3", {
  
  expect_equal( exists("best_seller"), TRUE)
  expect_equal( exists("worst_seller"), TRUE) 
  expect_equal( exists("best_per_yr"), TRUE)
  expect_equal( exists("mean_sale"), TRUE) 
  expect_equal( exists("median_sale"), TRUE)
  expect_equal( exists("diff_mean_med"), TRUE)
  expect_equal( exists("mean_or_median"), TRUE)
  expect_equal( exists("above_avg"), TRUE)
  expect_equal( exists("above_avg_per"), TRUE) 
  expect_equal( exists("above_avg_hardware_per"), TRUE)
  
})

test_that("Check if all variables exist - Part 4", {
  
  expect_equal( exists("fe_sold"), TRUE)
  expect_equal( exists("avg_console_sale`"), TRUE) 
  expect_equal( exists("avg_publisher_sale"), TRUE)
  expect_equal( exists("avg_yr_sale"), TRUE) 
  expect_equal( exists("avg_strategy_sale"), TRUE)
  expect_equal( exists("fe_console_diff"), TRUE)
  expect_equal( exists("fe_publisher_diff"), TRUE)
  expect_equal( exists("fe_yr_diff"), TRUE) 
  expect_equal( exists("fe_strategy_diff"), TRUE)
  
})

test_that("Background Math", {
  
  expect_equal( total_games, 1770)
  expect_equal( total_seq, 920) 
  expect_equal( perc_seq, 52)
  expect_equal( perc_seq, 52) 
  expect_equal( total_AAA_games, 624)
  expect_equal( perc_AAA, 35)
  expect_equal( perc_hardware, 12)
  
})

test_that("Examining Trends Over Time", {
  
  expect_equal( games_2004, 23)
  expect_equal( length(games_per_yr), 7)
  expect_equal( length(diff_per_yr), 6)
  
})

test_that("Examining Sales and Market Share", {
  
  expect_equal( best_seller, "Wii Play") 
  expect_equal( length(worst_seller), 33)
  expect_equal(best_per_yr(2004), "Super Mario 64 DS")
  expect_equal(best_per_yr(2007), "Wii Fit")
  expect_equal(above_avg, 46)
})

test_that("Diving in with One Video Game", {
  
  expect_equal( avg_console_sale, 0.6911149) 
  expect_equal( avg_publisher_sale, 2.104906)
  expect_equal( avg_yr_sale, 0.46)
  expect_equal( avg_strategy_sale, 0.2302632)
})
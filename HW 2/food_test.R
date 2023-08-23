# This file contains part of my auto-grader. You can use this test file to check 
# to make sure that your code is running as expected. Feel free to modify 
# this file! 

test_that("Data Joining", {
  
  expect_equal( df$state_code[1], "AL")
  expect_equal( is.na(df$state_code[320]), TRUE) 
  
})

test_that("Data Cleaning & Wrangling", {
  
  expect_equal( length(missing_metro_status), 9 )
  expect_equal( is.na(df$Metro.nonmetro.status[320]), FALSE)
  expect_equal( exists("missing_metro_status"), TRUE)
  
})

test_that("County Level Analysis", {
  
  expect_equal( exists("rural"), TRUE)
  expect_equal( exists("urban"), TRUE)
  expect_equal( exists("econ_type_rural"), TRUE)
  expect_equal( exists("econ_type_urban"), TRUE)
  expect_equal( exists("fd_desert"), TRUE)
  expect_equal(is_food_desert("District of Columbia", NA), FALSE)
  expect_equal(rural_per, 63)
  expect_equal(urban_per, 37)
  expect_equal( df$food_desert[320], FALSE)
  expect_equal(fd_desert_per, 40)
  expect_equal(per_rural_fd, 13)
  expect_equal(round(rel_risk), 6)
  
})

test_that("Federal Level Analysis", {
  
  expect_equal( exists("total_fd_pop"), TRUE)
  expect_equal( exists("child_fd_pop"), TRUE)
  expect_equal( exists("LI_fd_pop"), TRUE)
  expect_equal(total_fd_per, 30)
  expect_equal(child_fd_per, 24)
  expect_equal(LI_fd_per, 8)
  
})

test_that("State Level Analysis", {
  
  expect_equal( exists("NE_avg_fd"), TRUE)
  expect_equal( exists("non_NE_avg_fd"), TRUE)
  expect_equal(length(top_5_fd_per_capita), 5)
  
})
library(testthat)
library(fallRunDSM)
source("../../R/utils.R")
# Tests utils functions and other helper functions
# Tests territory function -----------------------------------------------------
expected_territory <- c(0.0498944803729702, 0.138941944739835, 0.471083652829798, 0)

test_that('The territory_by_size funciton returns the expected output', {
  expect_equal(territory_by_size(), expected_territory)
})

# Tests utils functions --------------------------------------------------------
test_that('Days in month funciton returns the correct number of days for that month', {
  expect_equal(days_in_month(1), 31)
  expect_equal(days_in_month(5), 31)
})

# Test ocean transition month --------------------------------------------------
# Stochastic
test_that('Ocean transition month returns the expected output, stochastic = TRUE', {
  set.seed(2021)
  ocean_transition_month <- ocean_transition_month(stochastic = TRUE)
  expect_equal(ocean_transition_month, 2)
})
# Deterministic
test_that('Ocean transition month returns the expected output, stochastic = FALSE', {
  ocean_transition_month <- ocean_transition_month(stochastic = FALSE)
  expect_equal(ocean_transition_month, 2)
})

# Tests pretty num formating function ------------------------------------------
test_that('Pretty num returns the expected formating for a number', {
  expect_equal(pretty_num(24239057), "24,239,057")
  expect_equal(pretty_num(3423.3285670), "3,423.33")
})

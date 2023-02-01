#' Unit tests for create_id() function of BrokkR

#' Toy dataset
urls <- c('https://www.reddit.com/r/nba/', 'https://www.reddit.com/r/nfl/', 'https://vancouver.craigslist.org/search/apa', 'https://www.kaggle.com/search?q=nba')
expected <- c('reddit', 'reddit.1', 'craigslist', 'kaggle')
actual = create_id(urls)

#' Confirms the input is a character vector
testthat::test_that("input is a character vector", {
  testthat::expect_type(urls, "character")
})

#' Confirms the output is a character vector
testthat::test_that("output is a character vector", {
  testthat::expect_type(actual, "character")
})

#' Confirms the output vector of identifiers is the same length as the input vector of urls
testthat::test_that("input and output vectors are of same length", {
  testthat::expect_equal(length(urls), length(actual))
})

#' Confirms all identifers are unique and no duplicates were generated
testthat::test_that("output identifiers are unique", {
  testthat::expect_equal(length(unique(actual)), length(actual))
})

#' Confirms the actual output matches the expected output of the function
testthat::test_that("input and output vectors match", {
  testthat::expect_identical(expected, actual)
})

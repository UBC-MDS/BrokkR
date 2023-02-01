urls <- c("https://realpython.github.io/fake-jobs/jobs/energy-engineer-1.html",
          "https://realpython.github.io/fake-jobs/jobs/materials-engineer-24.html")

df <- duster(urls, test=TRUE)
testthat::test_that("Confirms the output number of rows is correct", {
  testthat::expect_equal(length(urls) + 1, length(df))
})

testthat::test_that("Confirms the output number of columns is correct", {
  testthat::expect_equal(ncol(df), 3)
})

testthat::test_that("Confirms the output is a tibble", {
  testthat::expect_true(tibble::is_tibble(df))
})

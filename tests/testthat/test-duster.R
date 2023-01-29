library("tibble")

urls <- c("https://realpython.github.io/fake-jobs/jobs/energy-engineer-1.html",
          "https://realpython.github.io/fake-jobs/jobs/materials-engineer-24.html")

df <- duster(urls, test=TRUE)
test_that("Confirms the output number of rows is correct", {
  expect_equal(length(urls) + 1, length(df))
})

test_that("Confirms the output number of columns is correct", {
  expect_equal(ncol(df), 3)
})

test_that("Confirms the output is a tibble", {
  expect_true(is_tibble(df))
})

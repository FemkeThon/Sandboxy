library(testthat)
library(Sandboxy)

test_check("Sandboxy")
test_that("hello prints Hello, world!", {
  expect_equal(hello, "Hello, world!")
  })

library(Sandboxy)
context("primes")

test_that("The function gives good output", {
  expect_equal(primes_in(1, 2), 2)
  expect_equal(primes_in(0, 4), c(2, 3))
  expect_equal(primes_in(7, 40), c(7, 11, 13, 17, 19, 23, 29, 31, 37))
})


test_that("Error messages work properly", {
  expect_error(primes_in(35, 30), c('Error, the first number should be lower than the second.'))
  expect_error(primes_in(31.2, 50), c("This doesn't work. Numbers should be integers."))
})


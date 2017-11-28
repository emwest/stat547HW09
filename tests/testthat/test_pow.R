context("testing non-numerics")
#expect a pass:
test_that("At least numeric values work.", {
  num_vec <- c(0, -4.6, 3.4)
  expect_identical(pow(num_vec,5), num_vec^5)
  expect_identical(pow(num_vec,3), num_vec^3)
})

test_that("At least numeric values work.", {
  num_vec <- c(0, -4.6, 3.4)
  expect_that(pow(num_vec,5), is_equivalent_to(num_vec^5))
})

test_that("Logicals automatically convert to numeric.", {
  logic_vec <- c(TRUE, TRUE, FALSE)
  expect_identical(pow(logic_vec,2), logic_vec^2)
})

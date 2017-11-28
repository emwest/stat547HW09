context("Compare Regression Output")
#passes expectation:
test_that("You should expect an error if you do not correctly define your arguments.", {
  expect_that(lmfun(continent, lifeExp,
                         mydata =gapminder), throws_error() )
})

#fails expectation:
test_that("You should not expect an error if you correctly define x and y.", {
expect_that(lmfun(gapminder$asd, gapminder$lifeExp,
mydata =gapminder), throws_error() )
})

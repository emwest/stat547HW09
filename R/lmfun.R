#' Display linear model objects with ease
#'
#' This function simply prints the results of a simple linear regression
#' in the form of a table of regression coefficients and qplot.
#'
#' @param x The predictor variable.
#' @param y The dependent variable.
#' @param mydata The dataset to be referenced
#'
#' @return A table and qplot \code{x}.
#'
#' @details
#' This function is silly in that it relies heavily on functions that
#' already exist and live happily in other packages. However, it allows
#' for efficient comparison of regression coefficients, p values and
#' plots.
#'
#' A list in this section may be excessive, but it is possible:
#' \itemize{
#'      \item This \code{pow} function is quite simple to use.
#'      \item No need to beat the dead horse, \code{pow}.
#' }
#'
#' @examples
#' lmfun(x= gapminder$lifeExp, y = gapminder$gdpPercap, mydata = gapminder)
#'
#' @export
lmfun <- function(x, y, mydata){
  mydata<-na.omit(mydata);
  fit<-lm(y~x, data = mydata);
  t<- broom::tidy(fit);
  p<- ggplot2::qplot(x,y);
  print(p)
  print(t)
}

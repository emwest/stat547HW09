#' Raise a vector to the nth power
#'
#' That's it -- this function simply raises a vector to the nth power.
#'
#' @param x The vector to be raised to the nth power.
#' @param a The vector x is to be raised to.
#'
#' @return A vector that is the output of \code{x}.
#'
#' @details
#' This function isn't complicated so there is no need to make this "details"
#' section lengthy
#'
#'
#' A list in this section may be excessive, but it is possible:
#' \itemize{
#'      \item This \code{pow} function is quite simple to use.
#'      \item No need to beat the dead horse, \code{pow}.
#' }
#'
#' @examples
#' pow(1:10,4)
#' pow(-5,4)
#'
#' @export
pow <- function(x, a) {
  res <- x^a
  p <- ggplot2::qplot(x, res)
  print(p)
  return(res)
}

#' Standard Error
#'
#' Computes standard error of a vector
#' @param x Numeric vector
#' @keywords standard error
#' @export
#' @examples
#' x <- rnorm(100)
#' se(x)

se <- function(x){
  sd(x)/sqrt(length(x))
}

#' Mean
#'
#' Same as base mean, but defaults to printing 3 digits
#' @param x Numeric vector
#' @keywords mean
#' @export
#' @examples
#' x <- rnorm(100)
#' mean(x)

mean <- function(x) {
  mu <- base::mean(x, na.rm=TRUE)
  mu3 <- return(mu, digits=3)
}

#' %out%
#'
#' Reverse of %in% - determine whether values are not in a vector
#' @param x Value or vector of interest
#' @param y Vector of values to compare to x
#' @keywords out
#' @export
#' @examples
#' x <- 11
#' y <- seq(1:10)
#' x%out%y
#' [1] TRUE

"%out%" <- function(x,y){
  !(x %in% y)
}

#' Inverse logit
#'
#' Function to compute inverse logit
#' @param x vector of logit transformed numerical values
#' @keywords logit; logistic regression
#' @export

invlogit <- function(x){exp(x)/(1+exp(x))}

#' First occurrence
#'
#' Index of the first occurrence of unique values from a vector
#' @param x vector
#' @keywords occurrence
#' @export


first.occ <- function(x){
  index <- !duplicated(x)
  return(seq_along(x)[index])
}

#' Coefficient of variation
#'
#' Compute coefficient ((sd/mean)*100) of variation of a vector;
#' @param x vector
#' @keywords coefficient of variation
#' @export
CV <- function(mean, sd){
  (sd/mean)*100
}

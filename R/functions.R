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
coeff.var <- function(x){
  mu <- base::mean(x)
  st.dev <- sd(x)
  (st.dev/mu)
}

#' Read csv lowercase
#'
#' Modification of read.csv to automatically convert column names to all lowercase
#' @param file filename of .csv file
#' @keywords read; csv
#' @export
read.csvl <- function(file){
  df <- read.csv(file)
  colnames(df) <- tolower(colnames(df))
  return(df)
}

#' General function to save figure files to different devices
#'
#' Adapted from nicercode.github.io
#' @param expr figure file or function to create figure
#' @param dev device
#' @param filename filename for saved figure
#' @param ... additional arguements passed to dev
#' @keywords figures
#' @export
to_dev <- function(expr, dev, filename, ..., verbose=TRUE) {
  if ( verbose )
    cat(sprintf("Creating %s\n", filename))
  dev(filename, ...)
  on.exit(dev.off())
  eval.parent(substitute(expr))
}

#' Function to save figure files as pdf
#'
#' Adapted from nicercode.github.io
#' @param expr figure file or function to create figure
#' @param filename filename for saved figure
#' @param ... additional arguements passed to dev
#' @keywords figures
#' @export
to_pdf <- function(expr, filename, ...)
  to_dev(expr, pdf, filename, ...)

#' Function to save figure files as png
#'
#' Adapted from nicercode.github.io
#' @param expr figure file or function to create figure
#' @param filename filename for saved figure
#' @param ... additional arguements passed to dev
#' @keywords figures
#' @export
to_png <- function(expr, filename, ...)
  to_dev(expr, png, filename)

#' Demonstrates what I did with the chapter 2 excercises.
#' @param none
#' @return a file containing my results.
#' @export
#' @author Femke Thon

chapter2 <- function(){
  file          <- NULL
  set.seed(1410)
  file$data           <- ggplot2::diamonds[
                         sample(nrow(ggplot2::diamonds), 100), ]
  file$plots$plot     <- qplot(carat, price, data = file$data)
  file$plots$logplot  <- qplot(log(carat), log(price), data = file$data)
  file$plots$xyzplot  <- qplot(carat, x * y * z, data = file$data)
  file$plots$coloured <- qplot(carat, price, data = file$data, colour = color)
  file$plots$shapes   <- qplot(carat, price, data = file$data, shape = cut)
  file
}
